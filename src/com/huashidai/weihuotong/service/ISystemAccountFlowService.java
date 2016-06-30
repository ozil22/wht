package com.huashidai.weihuotong.service;

import java.math.BigDecimal;

import com.huashidai.weihuotong.domain.Account;
import com.huashidai.weihuotong.domain.SystemAccount;
import com.huashidai.weihuotong.domain.SystemAccountFlow;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.SystemAccountFlowQuery;

public interface ISystemAccountFlowService {
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<SystemAccountFlow> query(SystemAccountFlowQuery qu);
	/**
	 * 添加账户流水
	 * @param accountActionType 账户流水类型（参考ConstUtil）
	 * @param amount 发生金额
	 * @param systemAccount 系统账户
	 * @param note 备注
	 * @param account 用户账户
	 * @return
	 */
	SystemAccountFlow createSystemAccountFlow(Integer accountActionType,
			BigDecimal amount, SystemAccount systemAccount, String note,
			Account account);
}
