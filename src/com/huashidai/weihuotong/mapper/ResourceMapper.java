package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.Resource;

public interface ResourceMapper {

	/*
	 * 新增一个权限
	 */
	void save(Resource resource);
	/*
	 * 新增全部权限
	 */
	void saveAll(List<Resource> resources);
	/*
	 * 修改一个一个权限
	 */
	void update(Resource resource);
	/*
	 * 删除一个权限
	 */
	void delete(Long id);
	/*
	 * 获得所有的权限列表
	 */
	List<Resource> getAll();
	/*
	 * 根据id的值获得单个权限信息
	 */
	Resource get(Long id);
}
