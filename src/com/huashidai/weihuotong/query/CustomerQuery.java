package com.huashidai.weihuotong.query;

/**
 * 封装查询对象
 */
public class CustomerQuery extends BaseQuery {
	private String customerName;

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	@Override
	public String toString() {
		return super.toString() + customerName;
	}

}
