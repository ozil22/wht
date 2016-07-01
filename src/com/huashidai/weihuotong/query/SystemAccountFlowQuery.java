package com.huashidai.weihuotong.query;

public class SystemAccountFlowQuery extends BaseQuery {
	/**
	 * 账户id
	 */
	private Long accountId = -1L;
	/**
	 * 时间
	 */
	private String startTime;
	private String endTime;

	public Long getAccountId() {
		return accountId;
	}

	public void setAccountId(Long accountId) {
		this.accountId = accountId;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	@Override
	public String toString() {
		return accountId + ", " + startTime + ", " + endTime;
	}
}
