package com.huashidai.weihuotong.query;

public class PromotionOrderQuery extends BaseQuery {
	/**
	 * 订单状态
	 */
	private Integer state = -99;
	/**
	 * 用户名字
	 */
	private String storeName;
	/**
	 * 用户id
	 */
	private Long storeId = -1l;
	/**
	 * 订单号
	 */
	private String orderNum;
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public Long getStoreId() {
		return storeId;
	}
	public void setStoreId(Long storeId) {
		this.storeId = storeId;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	@Override
	public String toString() {
		return super.toString()  + state + "," + storeName + "," + storeId + "," + orderNum;
	}

	
	
}
