package com.huashidai.weihuotong.service;

import java.math.BigDecimal;
import java.util.Map;

import com.huashidai.weihuotong.domain.MarginOrder;
import com.huashidai.weihuotong.query.MarginOrderQuery;
import com.huashidai.weihuotong.query.PageResult;


public interface IMarginOrderService {
	/**
	 * 生成订单号
	 */
	Map<String,Object> createOrderNum(Long storeId);
	/**
	 * 完成订单后做的操作
	 * @param promotionOrder
	 */
	void completeOrder(BigDecimal amount, Long id,String orderNum);
	
	/**
	 * 根据订单号获取
	 */
	MarginOrder getByOrderNum(String orderNum);
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<MarginOrder> query(MarginOrderQuery qu);
}
