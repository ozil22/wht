package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.huashidai.weihuotong.utils.ConstUtil;

/**
 * 用户提现申请
 * 
 * @author Administrator
 */
public class Withdraw implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2223337064133143020L;

	private Long id;

	private Integer type;// 提现方式 ，详见ConsUtil
	private BigDecimal amount = ConstUtil.ZERO; // 提现金额
	private String name;// 户主姓名
	private String accountName;// 提现账号
	private String accountAddress;// 开户地址
	private Integer state = ConstUtil.MONEY_WITHDRAW_APPROVE_PENDING;// 提现状态 详见ConsUtil
	private Date time;// 提现时间
	private String remark="";// 备注
	private Account account;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public String getAccountAddress() {
		return accountAddress;
	}

	public void setAccountAddress(String accountAddress) {
		this.accountAddress = accountAddress;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	

}
