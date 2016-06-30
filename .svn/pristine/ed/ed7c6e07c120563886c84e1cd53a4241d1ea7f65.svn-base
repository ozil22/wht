package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.math.BigDecimal;

import com.huashidai.weihuotong.utils.ConstUtil;

/**
 * 用户账户(金额)
 * 
 * @author Administrator
 */
public class Account implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5627582819127965483L;

	private Long id;

	private String name;// 账户名字

	private User user;// 所属账号

	private BigDecimal balance = ConstUtil.ZERO; // 可用余额

	private BigDecimal freezedAmount = ConstUtil.ZERO; // 冻结余额 (提现中)

	private BigDecimal proxyIncome = ConstUtil.ZERO; // 推荐收益

	private BigDecimal saleIncome = ConstUtil.ZERO; // 销售收益

	private Long version = 0l;// 版本号

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
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

	public BigDecimal getProxyIncome() {
		return proxyIncome;
	}

	public void setProxyIncome(BigDecimal proxyIncome) {
		this.proxyIncome = proxyIncome;
	}

	public BigDecimal getSaleIncome() {
		return saleIncome;
	}

	public void setSaleIncome(BigDecimal saleIncome) {
		this.saleIncome = saleIncome;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getVersion() {
		return version;
	}

	public void setVersion(Long version) {
		this.version = version;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ",  balance=" + balance
				+ ", freezedAmount=" + freezedAmount + ", proxyIncome="
				+ proxyIncome + ", saleIncome=" + saleIncome + "]";
	}

}
