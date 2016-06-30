package com.huashidai.weihuotong.service.impl;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.SystemAccount;
import com.huashidai.weihuotong.mapper.SystemAccountMapper;
import com.huashidai.weihuotong.service.ISystemAccountService;

@Service
public class SystemAccountServiceImpl implements ISystemAccountService {
	@Autowired
	private SystemAccountMapper systemAccountMapper;

	@Override
	public SystemAccount get() {
		return systemAccountMapper.get();
	}

	@Override
	public SystemAccount update(BigDecimal balance) {
		int flag = 0;
		SystemAccount systemAccount = null;
		while (flag == 0) {
			systemAccount = get();
			systemAccount.setBalance(systemAccount.getBalance().add(balance));
			flag = systemAccountMapper.update(systemAccount);
		}
		return systemAccount;
	}
}
