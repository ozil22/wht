package com.huashidai.weihuotong.service;

import java.util.List;

import com.huashidai.weihuotong.domain.SystemDictionaryItem;

public interface ISystemDictionaryItemService {
	SystemDictionaryItem get(Long id);

	void save(SystemDictionaryItem systemDictionaryItem);

	void update(SystemDictionaryItem systemDictionaryItem);

	void delete(Long id);

	List<SystemDictionaryItem> getAll();

	List<SystemDictionaryItem> getList(Long id);// 获取数据字典目录对应的所有
}
