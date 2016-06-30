package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.huashidai.weihuotong.utils.ConstUtil;

/**
 * 账户流水
 * 
 * @author SiRiUs
 *
 */
public class AccountFlow implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5727214527002793278L;

	private Long id;

	private Integer accountActionType;// 账户流水类型（参考ConstUtil）

	private BigDecimal amount = ConstUtil.ZERO; // 发生额(流水账金额,ZERO_AMOUNT:0)
	private Account account; // 对应的账户
	private String note; // 备注
	private BigDecimal balance = ConstUtil.ZERO; // 可用余额
	private BigDecimal freezedAmount = ConstUtil.ZERO; // 冻结余额 (提现冻结)
	private Date operateTime = new Date();// 操作时间

	public int getAccountActionType() {
		return accountActionType;
	}

	public void setAccountActionType(int accountActionType) {
		this.accountActionType = accountActionType;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
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

	public BigDecimal getFreezedAmount() {
		return freezedAmount;
	}

	public void setFreezedAmount(BigDecimal freezedAmount) {
		this.freezedAmount = freezedAmount;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getOperateTime() {
		return operateTime;
	}

	public void setOperateTime(Date operateTime) {
		this.operateTime = operateTime;
	}

	public void setAccountActionType(Integer accountActionType) {
		this.accountActionType = accountActionType;
	}

	@Override
	public String toString() {
		return "AccountFlow [id=" + id + ", accountActionType="
				+ accountActionType + ", amount=" + amount + ", account="
				+ account + ", note=" + note + ", balance=" + balance
				+ ", freezedAmount=" + freezedAmount + ", operateTime="
				+ operateTime + "]";
	}

	public AccountFlow() {
	}
	public AccountFlow(Integer accountActionType, BigDecimal amount,
			Account account, String note) {
		this.accountActionType = accountActionType;
		this.amount = amount;
		this.account = account;
		this.note = note;
		this.balance = account.getBalance();
		this.freezedAmount = account.getFreezedAmount();
		this.operateTime = new Date();
	}
	
	
}
