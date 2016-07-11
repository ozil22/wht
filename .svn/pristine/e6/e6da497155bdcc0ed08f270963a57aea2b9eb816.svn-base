package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.SystemDictionary;
import com.huashidai.weihuotong.mapper.SystemDictionaryMapper;
import com.huashidai.weihuotong.service.ISystemDictionaryService;

@Service
public class SystemDictionaryServiceImpl implements ISystemDictionaryService {
	// 注入进行持久化操作的接口
	@Autowired
	private SystemDictionaryMapper systemDictionaryMapper;

	@Override
	public SystemDictionary get(Long id) {
		return systemDictionaryMapper.get(id);
	}

	@Override
	public void save(SystemDictionary systemDictionary) {
		systemDictionaryMapper.save(systemDictionary);
	}

	@Override
	public void update(SystemDictionary systemDictionary) {
		systemDictionaryMapper.update(systemDictionary);
	}

	@Override
	public void delete(Long id) {
		systemDictionaryMapper.delete(id);
	}

	@Override
	public List<SystemDictionary> getAll() {
		return systemDictionaryMapper.getAll();
	}

}
