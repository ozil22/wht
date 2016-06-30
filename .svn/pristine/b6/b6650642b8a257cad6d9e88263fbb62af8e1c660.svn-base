package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.huashidai.weihuotong.utils.ConstUtil;

/**
 * 平台系统账户流水
 * 
 * @author Administrator
 */
public class SystemAccountFlow implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3799849191974167232L;
	private Long id;
	private Integer accountActionType; // 系统账户流水类型（参考ConstUtil）
	private BigDecimal amount = ConstUtil.ZERO; // 发生额(流水账金额,ZERO_AMOUNT:0)
	private String note; // 流水账备注
	private BigDecimal balance = ConstUtil.ZERO; // 系统账户可用余额
	private Date operateTime = new Date();// 操作时间
	private Account account; // 该系统账户流水对应的产生目标用户对象

	public SystemAccountFlow() {
	}

	public SystemAccountFlow(Integer accountActionType, BigDecimal amount,
			Account account, String note,BigDecimal balance) {
		this.accountActionType = accountActionType;
		this.amount = amount;
		this.account = account;
		this.note = note;
		this.balance = balance;
		this.operateTime = new Date();
	}

	public Integer getAccountActionType() {
		return accountActionType;
	}

	public void setAccountActionType(Integer accountActionType) {
		this.accountActionType = accountActionType;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public BigDecimal getBalance() {
		return balance;
	}

	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Date getOperateTime() {
		return operateTime;
	}

	public void setOperateTime(Date operateTime) {
		this.operateTime = operateTime;
	}

	@Override
	public String toString() {
		return "SystemAccountFlow [accountActionType="
				+ accountActionType + ", amount=" + amount + ", note=" + note
				+ ", balance=" + balance + ", operateTime=" + operateTime
				+ ", account=" + account + "]";
	}

	
	
}
