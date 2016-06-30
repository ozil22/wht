package com.huashidai.weihuotong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.ProductOrder;
import com.huashidai.weihuotong.domain.ProductOrderItem;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.ProductOrderQuery;
import com.huashidai.weihuotong.service.IProductOrderService;
import com.huashidai.weihuotong.system.MethodAnnotation;
import com.huashidai.weihuotong.system.MethodAnnotation.ResourceType;

@Controller
@RequestMapping("/productOrder")
public class ProductOrderCotroller {
	
	@Autowired
	IProductOrderService productOrderService;
	
	/**
	 * @return
	 */
	@MethodAnnotation(name="首页",type=ResourceType.商品订单)
	@RequestMapping("/index")
	public String productOrder() {
		return "goods/productOrder";
	}

	/**
	 * 高级查询+分页
	 * @param req
	 * @return
	 */
	@MethodAnnotation(name="查询",type=ResourceType.商品订单)
	@RequestMapping("/query")
	@ResponseBody
	public PageResult<ProductOrder> query(ProductOrderQuery qu) {
		PageResult<ProductOrder> list = productOrderService.query(qu);
		return list;
	}
	/**
	 * 获取订单明细
	 * @param req
	 * @return
	 */
	@MethodAnnotation(name="订单明细",type=ResourceType.商品订单)
	@RequestMapping("/orderItem")
	@ResponseBody
	public List<ProductOrderItem> orderItem(Long orderId) {
		List<ProductOrderItem> item = productOrderService.getItem(orderId);
		return item;
	}
	
}
