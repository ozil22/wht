package com.huashidai.weihuotong.service.impl;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.Account;
import com.huashidai.weihuotong.mapper.AccountMapper;
import com.huashidai.weihuotong.query.AccountQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.service.IAccountService;
import com.huashidai.weihuotong.utils.ConstUtil;

@Service
public class AccountServiceImpl implements IAccountService {
	@Autowired
	private AccountMapper accountMapper;

	@Override
	public Map<String, Object> getMapByUser(Long userId) {
		Account account = accountMapper.getByUser(userId);
		if (account != null) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("id", account.getId());
			map.put("freezedAmount", account.getFreezedAmount());
			map.put("balance", account.getBalance());
			map.put("proxyIncome", account.getProxyIncome());
			map.put("saleIncome", account.getSaleIncome());
			return map;
		}
		return null;
	}

	@Override
	public Account getByUser(Long userId) {
		return accountMapper.getByUser(userId);
	}

	@Override
	public Account getByStore(Long storeId) {
		return accountMapper.getByStore(storeId);
	}

	@Override
	public Account updateByUser(Long userId, BigDecimal amount,
			Integer accountFlowType) {
		int flag = 0;
		Account account = null;
		while (flag == 0) {
			account = accountMapper.getByUser(userId);
			if (amount != null) {
				if (accountFlowType == ConstUtil.ACCOUNT_ACTIONTYPE_PROXYINCOME) {
					account.setProxyIncome(account.getProxyIncome().add(amount));
				}
				if (accountFlowType == ConstUtil.ACCOUNT_ACTIONTYPE_SALEINCOME) {
					account.setBalance(account.getBalance().add(amount));
					account.setSaleIncome(account.getSaleIncome().add(amount));

				}
			}
			flag = accountMapper.update(account);
		}
		return account;
	}

	@Override
	public void save(Account account) {
		accountMapper.save(account);
	}

	@Override
	public Account get(Long id) {
		return accountMapper.get(id);
	}

	@Override
	public PageResult<Account> query(AccountQuery qu) {
		// 统计查询
		Long total = accountMapper.queryTotal(qu);
		// 分页查询
		List<Account> rows = accountMapper.query(qu);
		return new PageResult<Account>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}

	@Override
	public Account update(Long accountId,
			BigDecimal freezedAmount, BigDecimal proxyIncome,
			BigDecimal saleIncome) {
		int flag = 0;
		Account account = null;
		while (flag == 0) {
			account = get(accountId);
			if (freezedAmount != null && freezedAmount.compareTo(ConstUtil.ZERO) != 0 ) {
				account.setBalance(account.getBalance().subtract(freezedAmount));
				account.setFreezedAmount(account.getFreezedAmount().add(
						freezedAmount));
			}
			if (proxyIncome != null && proxyIncome.compareTo(ConstUtil.ZERO) != 0 ) {
				account.setBalance(account.getBalance().add(proxyIncome));
				account.setProxyIncome(account.getProxyIncome().add(proxyIncome));
			}
			if (saleIncome != null && saleIncome.compareTo(ConstUtil.ZERO) != 0 ) {
				account.setBalance(account.getBalance().add(saleIncome));
				account.setSaleIncome(account.getSaleIncome().add(saleIncome));
			}
			flag = accountMapper.update(account);
		}
		return account;
	}

}
