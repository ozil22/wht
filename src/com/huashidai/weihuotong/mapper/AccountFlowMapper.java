package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.AccountFlow;
import com.huashidai.weihuotong.query.AccountFlowQuery;

public interface AccountFlowMapper {

	void save(AccountFlow accountFlow);

	AccountFlow get(Long id);

	List<AccountFlow> getByAccount(Long accountId);

	void delete(Long id);
	
	/**
	 * 高级查询
	 */
	List<AccountFlow> query(AccountFlowQuery qu);
	/**
	 * 查询总数
	 */
	Long queryTotal(AccountFlowQuery qu);

}