package com.huashidai.weihuotong.service.impl;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.Account;
import com.huashidai.weihuotong.domain.SystemAccount;
import com.huashidai.weihuotong.domain.SystemAccountFlow;
import com.huashidai.weihuotong.mapper.SystemAccountFlowMapper;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.SystemAccountFlowQuery;
import com.huashidai.weihuotong.service.ISystemAccountFlowService;

@Service
public class SystemAccountFlowServiceImpl implements ISystemAccountFlowService {
	@Autowired
	private SystemAccountFlowMapper systemAccountFlowMapper;

	@Override
	public PageResult<SystemAccountFlow> query(SystemAccountFlowQuery qu) {
		// 统计查询
		Long total = systemAccountFlowMapper.queryTotal(qu);
		// 分页查询
		List<SystemAccountFlow> rows = systemAccountFlowMapper.query(qu);
		return new PageResult<SystemAccountFlow>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}

	@Override
	public SystemAccountFlow createSystemAccountFlow(Integer accountActionType,
			BigDecimal amount, SystemAccount systemAccount, String note,
			Account account) {
		SystemAccountFlow systemAccountFlow = new SystemAccountFlow(
				accountActionType, amount,account, note,systemAccount.getBalance());
		systemAccountFlowMapper.save(systemAccountFlow);
		return systemAccountFlow;
	}

}
