package com.huashidai.weihuotong.quartz;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.huashidai.weihuotong.domain.ProductOrder;
import com.huashidai.weihuotong.domain.Promotion;
import com.huashidai.weihuotong.domain.Store;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.PromotionQuery;
import com.huashidai.weihuotong.service.IMessageService;
import com.huashidai.weihuotong.service.IProductOrderService;
import com.huashidai.weihuotong.service.IPromotionService;
import com.huashidai.weihuotong.service.IStoreService;
import com.huashidai.weihuotong.utils.ConstUtil;
import com.huashidai.weihuotong.utils.DateUtil;

@Component
public class Quartz {
	@Autowired
	private IProductOrderService productOrderService;
	@Autowired
	private IPromotionService promotionService;
	@Autowired
	private IMessageService messageService;
	@Autowired
	private IStoreService storeService;

	@Scheduled(cron = "0/59 * *  * * ? ")
	// 每59秒执行一次
	public void myTest() {
		System.out.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(new Date()));
	}
	/**
	 * 关闭未支付的订单
	 * 每天1点执行
	 */
	@Scheduled(cron = "0 00 1 * * ?")
	public void closeOrder(){
		List<ProductOrder> dueNotPay = productOrderService.getDueNotPay();
		System.out.println(dueNotPay.size());
		for (ProductOrder productOrder : dueNotPay) {
			productOrderService.updateState(productOrder.getId(), ConstUtil.ORDER_CLOSE);
		}
		
	}
	/**
	 * 完成未收货的订单
	 * 每天2点执行
	 */
	@Scheduled(cron = "0 00 2 * * ?")
	public void finishOrder(){
		List<ProductOrder> dueNotPay = productOrderService.getDueNotFinish();
		for (ProductOrder productOrder : dueNotPay) {
			productOrderService.completeOrder(productOrder);
		}
		
	}
	/**
	 * 提醒快要结束的广告
	 * 每天3点执行
	 */
	@Scheduled(cron = "0 00 2 * * ?")
	public void remindPromotion(){
		PromotionQuery qu = new PromotionQuery();
		qu.setState(ConstUtil.PROMOTION_NORMAL);
		qu.setPromotionDate(ConstUtil.PROMOTION_CURRENT);
		qu.setPageSize(-1);
		PageResult<Promotion> pageResult = promotionService.query(qu);
		List<Promotion> list = pageResult.getRows();
		for (Promotion promotion : list) {
			try {
				if (DateUtil.betweenDays(new Date(), promotion.getEndTime()) < 1) {
					Store store = storeService.getByPromotion(promotion.getId());
					messageService.createMessage(store.getId(), "广告到期", "你有广告即将到期，请及时续费！");
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		
	}
	
}
