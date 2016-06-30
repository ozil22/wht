package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 保证金订单
 * 
 * @author ozil
 *
 */
public class MarginOrder implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 7992969182095156178L;
	private Long id;
	private Date buyTime;// 购买时间
	private String orderNum;// 订单号
	private BigDecimal totalPrice;// 总价
	private BigDecimal payPrice;// 实际付款金额
	private Store store;// 购买的用户

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getBuyTime() {
		return buyTime;
	}

	public void setBuyTime(Date buyTime) {
		this.buyTime = buyTime;
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


	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}


	@Override
	public String toString() {
		return "PromotionOrder [id=" + id + ", buyTime=" + buyTime
				+ ", orderNum=" + orderNum + ", totalPrice=" + totalPrice
				+ ", payPrice=" + payPrice  + "]";
	}

	public MarginOrder(Date buyTime, String orderNum, BigDecimal totalPrice,
			BigDecimal payPrice, Store store) {
		this.buyTime = buyTime;
		this.orderNum = orderNum;
		this.totalPrice = totalPrice;
		this.payPrice = payPrice;
		this.store = store;
	}
	public MarginOrder() {
	}
	
	

}
