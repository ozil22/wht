package com.huashidai.weihuotong.service;

import com.huashidai.weihuotong.domain.SystemException;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.SystemExceptionQuery;

public interface ISystemExceptionService {
	
	void save(SystemException systemLog);
	SystemException get(Long id);
	
	
	PageResult<SystemException> query(SystemExceptionQuery q);
	
}
