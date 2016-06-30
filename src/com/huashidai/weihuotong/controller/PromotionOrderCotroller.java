package com.huashidai.weihuotong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.PromotionOrder;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.PromotionOrderQuery;
import com.huashidai.weihuotong.service.IPromotionOrderService;
import com.huashidai.weihuotong.utils.MethodAnnotation;
import com.huashidai.weihuotong.utils.MethodAnnotation.ResourceType;

@Controller
@RequestMapping("/promotionOrder")
public class PromotionOrderCotroller {
	
	@Autowired
	IPromotionOrderService promotionOrderService;
	
	/**
	 * @return
	 */
	@MethodAnnotation(name="首页",type=ResourceType.广告订单)
	@RequestMapping("/index")
	public String promotionOrder() {
		return "adPositionId/promotionOrder";
	}

	/**
	 * 高级查询+分页
	 * @param req
	 * @return
	 */
	@MethodAnnotation(name="查询",type=ResourceType.广告订单)
	@RequestMapping("/query")
	@ResponseBody
	public PageResult<PromotionOrder> query(PromotionOrderQuery qu) {
		PageResult<PromotionOrder> list = promotionOrderService.query(qu);
		return list;
	}
	
}
