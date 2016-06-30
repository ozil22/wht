package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.SystemException;
import com.huashidai.weihuotong.query.SystemExceptionQuery;

public interface SystemExceptionMapper {
	void save(SystemException systemLog);
	SystemException get(Long id);
	
	
	List<SystemException> query(SystemExceptionQuery q);
	
	Long queryTotal(SystemExceptionQuery q);
}
