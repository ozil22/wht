package com.huashidai.weihuotong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.MarginOrder;
import com.huashidai.weihuotong.query.MarginOrderQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.service.IMarginOrderService;
import com.huashidai.weihuotong.system.MethodAnnotation;
import com.huashidai.weihuotong.system.MethodAnnotation.ResourceType;

@Controller
@RequestMapping("/marginOrder")
public class MarginOrderCotroller {
	
	@Autowired
	IMarginOrderService marginOrderService;
	
	/**
	 * @return
	 */
	@MethodAnnotation(name="首页",type=ResourceType.保证金订单)
	@RequestMapping("/index")
	public String marginOrder() {
		return "store/marginOrder";
	}

	/**
	 * 高级查询+分页
	 * @param req
	 * @return
	 */
	@MethodAnnotation(name="查询",type=ResourceType.保证金订单)
	@RequestMapping("/query")
	@ResponseBody
	public PageResult<MarginOrder> query(MarginOrderQuery qu) {
		PageResult<MarginOrder> list = marginOrderService.query(qu);
		return list;
	}
	
}
