package com.huashidai.weihuotong.service;

import java.math.BigDecimal;
import java.util.Map;

import com.huashidai.weihuotong.domain.Account;
import com.huashidai.weihuotong.domain.AccountFlow;
import com.huashidai.weihuotong.query.AccountFlowQuery;
import com.huashidai.weihuotong.query.PageResult;

public interface IAccountFlowService {
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<AccountFlow> query(AccountFlowQuery qu);
	/**
	 * 高级查询
	 * @param qu
	 * @return 封装好的APP数据
	 */
	Map<String,Object> queryMap(AccountFlowQuery qu);
	/**
	 * 添加账户流水
	 * @param accountActionType 账户流水类型（参考ConstUtil）
	 * @param amount 发生金额
	 * @param account 账户
	 * @param note 备注
	 * @return
	 */
	AccountFlow createAccountFlow(Integer accountActionType,BigDecimal amount,Account account,String note);
}
