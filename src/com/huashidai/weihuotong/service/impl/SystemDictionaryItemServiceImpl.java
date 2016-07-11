package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.SystemDictionaryItem;
import com.huashidai.weihuotong.mapper.SystemDictionaryItemMapper;
import com.huashidai.weihuotong.service.ISystemDictionaryItemService;

@Service
public class SystemDictionaryItemServiceImpl implements
		ISystemDictionaryItemService {
	// 注入进行持久化操作的接口
	@Autowired
	private SystemDictionaryItemMapper systemDictionaryItemMapper;

	@Override
	public SystemDictionaryItem get(Long id) {
		return systemDictionaryItemMapper.get(id);
	}

	@Override
	public void save(SystemDictionaryItem systemDictionaryItem) {
		systemDictionaryItemMapper.save(systemDictionaryItem);

	}

	@Override
	public void update(SystemDictionaryItem systemDictionaryItem) {
		systemDictionaryItemMapper.update(systemDictionaryItem);

	}

	@Override
	public void delete(Long id) {
		systemDictionaryItemMapper.delete(id);

	}

	@Override
	public List<SystemDictionaryItem> getAll() {
		return systemDictionaryItemMapper.getAll();
	}

	@Override
	public List<SystemDictionaryItem> getList(Long id) {
		return systemDictionaryItemMapper.getList(id);
	}

}