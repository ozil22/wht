package com.huashidai.weihuotong.service;

import com.huashidai.weihuotong.domain.SystemLog;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.SystemLogQuery;

public interface ISystemLogService {
	
	void save(SystemLog systemLog);
	SystemLog get(Long id);
	
	
	PageResult<SystemLog> query(SystemLogQuery q);
	
}
