package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 代理的商品
 * @author ozil
 *
 */
public class ProxyGoods implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2301139197744493538L;
	private Long id;
	private BigDecimal price;//售价
	private String details;//商品简介
	private Goods goods;//商品
	private User user;//代理商
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "ProxyGoods [id=" + id + ", price=" + price + ", details="
				+ details + ", goods=" + goods + ", user=" + user + "]";
	}
}
