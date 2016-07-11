package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.SystemDictionary;

public interface SystemDictionaryMapper {
	// 建表
	// void createtable();

	SystemDictionary get(Long id);

	void save(SystemDictionary systemDictionary);

	void update(SystemDictionary systemDictionary);

	void delete(Long id);

	List<SystemDictionary> getAll();
}
