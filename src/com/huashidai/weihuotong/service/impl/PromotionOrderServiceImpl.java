package com.huashidai.weihuotong.service.impl;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.AdPositionId;
import com.huashidai.weihuotong.domain.Promotion;
import com.huashidai.weihuotong.domain.PromotionOrder;
import com.huashidai.weihuotong.domain.Store;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.mapper.PromotionOrderMapper;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.PromotionOrderQuery;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IAdPositionIdService;
import com.huashidai.weihuotong.service.IPromotionOrderService;
import com.huashidai.weihuotong.service.IPromotionService;
import com.huashidai.weihuotong.utils.ConstUtil;
import com.huashidai.weihuotong.utils.DateUtil;
import com.huashidai.weihuotong.utils.FileUtil;
import com.huashidai.weihuotong.utils.OrderNumUtil;
import com.huashidai.weihuotong.utils.StateCode;

@Service
public class PromotionOrderServiceImpl implements IPromotionOrderService {

	@Autowired
	private PromotionOrderMapper promotionOrderMapper;
	@Autowired
	private IPromotionService promotionService;
	@Autowired
	private IAdPositionIdService adPositionIdService;

	@CacheEvict
	@Override
	public Map<String, Object> submitOrder(MultipartFile image, Long begin,
			Long end, Long adId, Long storeId, Long contentId,
			Integer contentType) throws ParseException, IOException {
		String subject = "广告位";
		String body = "广告位";
		Date beginTime = new Date(begin);
		Date endTime = new Date(end);
		AdPositionId adPositionId = adPositionIdService.get(adId);
		Map<String, Object> map = new HashMap<String, Object>();
		// 判断时间是否重叠
		boolean checkPromotionTime = checkPromotionTime(beginTime, endTime,
				adId);
		if (checkPromotionTime) {
			throw new LogicException("您选择的时间部分已售出,提交失败!!",
					StateCode.PROMOTION_NOTBUY);
		}
		Promotion promotion = new Promotion(contentType, contentId, beginTime,
				endTime, new Store(storeId), adPositionId);
		// 计算价格
		int betweenDays = DateUtil.betweenDays(beginTime, endTime);
		BigDecimal price = adPositionId.getDayPrice().multiply(
				new BigDecimal(betweenDays));
		promotion.setPrice(adPositionId.getDayPrice().multiply(
				new BigDecimal(betweenDays)));
		// 保存图片
		String src = FileUtil.saveImage(image, "promotion");
		promotion.setImage(src);
		promotionService.save(promotion);
		// =======================生成订单==================================
		Store store = promotion.getStore();
		String orderNum = OrderNumUtil.PROMOTION_PRE
				+ OrderNumUtil.getOrderNum(store.getId());
		// 广告订单
		PromotionOrder promotionOrder = new PromotionOrder();
		promotionOrder.setBuyTime(new Date());
		promotionOrder.setOrderNum(orderNum);
		promotionOrder.setPromotion(promotion);
		promotionOrder.setTotalPrice(price);
		promotionOrder.setPayPrice(price);
		promotionOrder.setStore(store);
		promotionOrderMapper.save(promotionOrder);
		// 封装返回内容
		map.put("orderNum", orderNum);
		map.put("totalPrice", price);
		map.put("payPrice", price);
		map.put("subject", subject.length() > 15 ? subject.substring(0, 15)
				: subject);
		map.put("body", body.length() > 63 ? body.substring(0, 63) : body);
		return map;
	}

	@CacheEvict
	@Override
	public void completeOrder(PromotionOrder promotionOrder) {
		// 更改订单状态
		promotionOrder.setState(ConstUtil.PROMOTION_ORDER_FINISH);
		promotionOrderMapper.updateState(promotionOrder);
		// 更改广告状态
		Promotion promotion = promotionOrder.getPromotion();
		promotionService.updateState(promotion.getId(),
				ConstUtil.PROMOTION_NORMAL);
	}

	/**
	 * 判断该广告位售出的广告时间是否与该时间段冲突
	 * 
	 * @param begin
	 *            开始时间
	 * @param end
	 *            结束时间
	 * @param adPositionId
	 *            广告位id
	 * @return
	 */
	private boolean checkPromotionTime(Date begin, Date end, Long adPositionId) {
		List<Promotion> promotions = promotionService.getByAd(adPositionId);
		for (Promotion promotion : promotions) {
			Date beginTime = promotion.getBeginTime();
			Date endTime = promotion.getEndTime();
			if (begin.compareTo(endTime) > 0 || end.compareTo(beginTime) < 0) {
				continue;
			}
			return true;
		}
		return false;
	}

	@Override
	public Map<String, Object> toBuyPromotion(Long adPositionId) {
		Map<String, Object> map = new HashMap<String, Object>();
		AdPositionId ap = adPositionIdService.get(adPositionId);
		map.put("adPositionId", adPositionId);
		map.put("dayPrice", ap.getDayPrice());
		// 已售出时间段
		List<Object> list = new ArrayList<Object>();
		List<Promotion> promotions = promotionService.getByAd(adPositionId);
		for (Promotion promotion : promotions) {
			Map<String, Object> p = new HashMap<String, Object>();
			p.put("beginTime", promotion.getBeginTime());
			p.put("endTime", promotion.getEndTime());
			list.add(p);
		}
		map.put("times", list);
		return map;
	}

	@Cacheable
	@Override
	public PromotionOrder getByOrderNum(String orderNum) {
		return promotionOrderMapper.getByOrderNum(orderNum);
	}

	@Cacheable
	@Override
	public PageResult<PromotionOrder> query(PromotionOrderQuery qu) {
		// 统计查询
		Long total = promotionOrderMapper.queryTotal(qu);
		// 分页查询
		List<PromotionOrder> rows = promotionOrderMapper.query(qu);
		return new PageResult<PromotionOrder>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}

}
