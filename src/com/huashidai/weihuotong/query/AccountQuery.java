package com.huashidai.weihuotong.query;

public class AccountQuery extends BaseQuery {
	/**
	 * 账户id
	 */
	private Long userId = -1L;
	/**
	 * 账户名字
	 */
	private String name;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return super.toString() + userId + "," + name;
	}

}
