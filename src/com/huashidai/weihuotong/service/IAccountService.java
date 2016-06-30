package com.huashidai.weihuotong.service;

import java.math.BigDecimal;
import java.util.Map;

import com.huashidai.weihuotong.domain.Account;
import com.huashidai.weihuotong.query.AccountQuery;
import com.huashidai.weihuotong.query.PageResult;


public interface IAccountService {
	/**
	 * 获取用户的账户信息
	 * @param userId
	 * @return
	 */
	Map<String,Object> getMapByUser(Long userId);
	/**
	 * 获取用户的账户信息
	 * @param userId
	 * @return
	 */
	Account getByUser(Long userId);
	/**
	 * 获取店铺的账户信息
	 * @param userId
	 * @return
	 */
	Account getByStore(Long storeId);
	/**
	 * 获取账户信息
	 * @param id
	 * @return
	 */
	Account get(Long id);
	/**
	 * 更新店铺账户信息
	 * @param userId 用户id
	 * @param amount 交易金额
	 * @param accountFlowType 流水类型
	 * @return 更新后的账户
	 */
	Account updateByUser(Long userId,BigDecimal amount,Integer accountFlowType);
	/**
	 * 保存
	 * @param account
	 */
	void save(Account account);
	/**
	 * 更新账户信息
	 * @param freezedAmount 冻结金额
	 * @param proxyIncome 代理收入
	 * @param saleIncome 销售收入
	 */
	Account update(Long accountId,BigDecimal freezedAmount,BigDecimal proxyIncome,BigDecimal saleIncome);
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<Account> query(AccountQuery qu);
}
