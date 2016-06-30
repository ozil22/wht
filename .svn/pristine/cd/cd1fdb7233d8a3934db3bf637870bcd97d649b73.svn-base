package com.huashidai.weihuotong.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.ProductOrderItem;

public interface ProductOrderItemMapper {
	/**
	 * 保存
	 */
	void save(ProductOrderItem productOrderItem);
	/**
	 * 更新
	 */
	void update(ProductOrderItem productOrderItem);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	ProductOrderItem get(Long id);
	/**
	 * 查询所有
	 */
	List<ProductOrderItem> getAll();
	/**
	 * 查询该订单的所有明细
	 */
	List<ProductOrderItem> getByOrder(@Param("orderId")Long orderId);
	/**
	 * 删除该订单的所有明细
	 * @param productOrderId
	 */
	void deleteByOrder(@Param("orderId")Long orderId);
}
