package com.huashidai.weihuotong.service;

import java.util.List;

import com.huashidai.weihuotong.domain.SystemDictionary;

public interface ISystemDictionaryService {
	SystemDictionary get(Long id);

	void save(SystemDictionary systemDictionary);

	void update(SystemDictionary systemDictionary);

	void delete(Long id);

	List<SystemDictionary> getAll();
}
