package com.huashidai.weihuotong.service;

import com.huashidai.weihuotong.domain.Withdraw;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.WithdrawQuery;

public interface IWithdrawService {
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<Withdraw> query(WithdrawQuery qu);
	/**
	 * 保存
	 * @return
	 */
	void withdrawApply(Withdraw withdraw);
	/**
	 * 同意提现
	 * @param id
	 */
	void agreeApply(Long id);
	/**
	 * 拒绝提现
	 * @param id
	 * @param remark
	 */
	void refuseApply(Long id, String remark);
}
