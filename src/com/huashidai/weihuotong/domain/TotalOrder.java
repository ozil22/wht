package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.math.BigDecimal;

import com.huashidai.weihuotong.utils.ConstUtil;

/**
 * 商品订单的父订单(用于合并多个订单支付)
 * @author ozil
 *
 */
public class TotalOrder implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 3261735942324909052L;
	private Long id;
	private String orderNum;//订单号
	private BigDecimal totalPrice = ConstUtil.ZERO;//订单总价
	private BigDecimal payPrice;//订单实际支付总价
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public BigDecimal getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}
	public BigDecimal getPayPrice() {
		return payPrice;
	}
	public void setPayPrice(BigDecimal payPrice) {
		this.payPrice = payPrice;
	}
	public TotalOrder(String orderNum, BigDecimal totalPrice,
			BigDecimal payPrice) {
		super();
		this.orderNum = orderNum;
		this.totalPrice = totalPrice;
		this.payPrice = payPrice;
	}
	public TotalOrder() {
	}
	
}
