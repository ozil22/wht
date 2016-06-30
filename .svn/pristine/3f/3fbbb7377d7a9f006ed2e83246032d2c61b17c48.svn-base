package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.SystemException;
import com.huashidai.weihuotong.mapper.SystemExceptionMapper;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.SystemExceptionQuery;
import com.huashidai.weihuotong.service.ISystemExceptionService;

@Service
public class SystemExceptionServiceImpl implements ISystemExceptionService {
	@Autowired
	private SystemExceptionMapper systemLogMapper;

	@Override
	public void save(SystemException systemLog) {
		systemLogMapper.save(systemLog);
	}

	@Override
	public SystemException get(Long id) {
		return systemLogMapper.get(id);
	}

	@Override
	public PageResult<SystemException> query(SystemExceptionQuery qu) {
		// 统计查询
		Long total = systemLogMapper.queryTotal(qu);
		// 分页查询
		List<SystemException> rows = systemLogMapper.query(qu);
		return new PageResult<SystemException>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}
}
