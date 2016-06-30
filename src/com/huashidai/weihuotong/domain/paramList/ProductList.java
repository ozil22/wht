package com.huashidai.weihuotong.domain.paramList;

import java.util.List;

import com.huashidai.weihuotong.domain.Product;
/**
 *  封装springmvc接收的集合对象
 * @author ozil
 *
 */
public class ProductList {
	private List<Product> products;

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}
}
