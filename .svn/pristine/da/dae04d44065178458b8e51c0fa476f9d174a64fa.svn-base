package com.huashidai.weihuotong.service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import com.huashidai.weihuotong.domain.ProductOrder;
import com.huashidai.weihuotong.domain.ProductOrderItem;
import com.huashidai.weihuotong.domain.paramList.ProductOrderItemList;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.ProductOrderQuery;


public interface IProductOrderService {
//	/**
//	 * 提交订单
//	 * @param maps 
//	 * @return
//	 */
//	Map<String,Object> submitOrder(List<Map<String, String>> maps);
	/**
	 * 提交直接购买订单
	 * @param items 订单明细集合
	 * @param userId 用户id
	 * @param addressId 地址id
	 * @param proxyGoodsId 代理商品id
	 * @param customerId 网页购买客户id
	 * @return
	 */
	Map<String, Object> submitOrder(ProductOrderItemList items, Long userId,
			Long addressId, Long customerId, Long proxyGoodsId);
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<ProductOrder> query(ProductOrderQuery qu);
	
	/**
	 * 根据订单号获取
	 */
	ProductOrder getByOrderNum(String orderNum);
	/**
	 * 根据总订单号获取
	 */
	List<ProductOrder> getByTotalOrderNum(String totalOrderNum);
	/**
	 * 获取订单明细
	 * @param orderId
	 * @return
	 */
	List<ProductOrderItem> getItem(Long orderId);
	
	/**
	 * 完成订单后做的操作
	 * @param productOrder
	 */
	void completeOrder(ProductOrder productOrder);
	/**
	 * APP端订单查询
	 * @param qu
	 * @return
	 */
	Map<String, Object> queryMap(ProductOrderQuery qu);
	/**
	 * 修改订单金额
	 * @param productOrderId
	 * @param price
	 */
	void updateOrderPrice(Long productOrderId, BigDecimal price);
	/**
	 * 改变状态
	 * @param productOrderId
	 * @param state
	 */
	void updateState(Long productOrderId,Integer state);
	/**
	 * 发货
	 * @param productOrderId
	 */
	void shipOrder(Long productOrderId);
	/**
	 * 确认收货
	 * @param productOrderId
	 */
	void confirmOrder(Long productOrderId);
	/**
	 * 申请退货
	 * @param productOrderId
	 */
	void applyReturnOrder(Long productOrderId);
	/**
	 * 同意退货
	 * @param productOrderId
	 */
	void agreeReturnOrder(Long productOrderId);
	/**
	 * 删除订单
	 * @param productOrderId
	 */
	void delete(Long productOrderId);
	/**
	 * 取消订单
	 * @param productOrderId
	 */
	void cancelOrder(Long productOrderId);
	/**
	 * 获取失效的未支付订单(1天前)
	 * @return
	 */
	List<ProductOrder> getDueNotPay();
	/**
	 * 获取未确认收货订单（10天前）
	 * @return
	 */
	List<ProductOrder> getDueNotFinish();
	
}
