package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.ProxyLog;
import com.huashidai.weihuotong.query.ProxyLogQuery;

public interface ProxyLogMapper {

	void save(ProxyLog proxyLog);

	ProxyLog get(Long id);

	void delete(Long id);
	
	/**
	 * 高级查询
	 */
	List<ProxyLog> query(ProxyLogQuery qu);
	/**
	 * 查询总数
	 */
	Long queryTotal(ProxyLogQuery qu);

}