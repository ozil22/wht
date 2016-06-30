package com.huashidai.weihuotong.domain.paramList;

import java.util.List;

import com.huashidai.weihuotong.domain.ProductOrderItem;
/**
 *  封装springmvc接收的集合对象
 * @author ozil
 *
 */
public class ProductOrderItemList {
	private List<ProductOrderItem> productOrderItems;

	public List<ProductOrderItem> getProductOrderItems() {
		return productOrderItems;
	}
	public void setProductOrderItems(List<ProductOrderItem> productOrderItems) {
		this.productOrderItems = productOrderItems;
	}
}
