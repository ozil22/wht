package com.huashidai.weihuotong.service;

import java.io.IOException;
import java.text.ParseException;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.PromotionOrder;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.PromotionOrderQuery;


public interface IPromotionOrderService {
	/**
	 * 进入购买广告页面
	 * @param adPositionId
	 * @return
	 */
	Map<String, Object> toBuyPromotion(Long adPositionId);
	/**
	 * 购买广告
	 * @param image
	 * @param begin
	 * @param end
	 * @param adPositionIdId
	 * @param userId
	 * @param contentId
	 * @param contentType
	 * @return
	 * @throws IOException 
	 * @throws ParseException 
	 */
	Map<String, Object> submitOrder(MultipartFile image, Long begin, Long end,
			Long adPositionId, Long storeId, Long contentId,
			Integer contentType) throws ParseException, IOException;
	/**
	 * 完成订单后做的操作
	 * @param promotionOrder
	 */
	void completeOrder(PromotionOrder promotionOrder);
	
	/**
	 * 根据订单号获取
	 */
	PromotionOrder getByOrderNum(String orderNum);
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<PromotionOrder> query(PromotionOrderQuery qu);
}
