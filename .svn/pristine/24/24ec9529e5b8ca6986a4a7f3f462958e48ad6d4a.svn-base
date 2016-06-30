package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.Permission;
import com.huashidai.weihuotong.query.BaseQuery;

public interface PermissionMapper {

	/**
	 * 新增一个权限
	 */
	void save(Permission permission);
	/**
	 * 修改一个一个权限
	 */
	void update(Permission permission);
	/**
	 * 删除一个权限
	 */
	void delete(Long id);
	/**
	 * 获得所有的权限列表
	 */
	List<Permission> getAll();
	/**
	 * 根据id的值获得单个权限信息
	 */
	Permission get(Long id);
	/**
	 * 根据资源名获取权限
	 * */
	Permission getPermissionByResources(String resourceName);
	
	List<Permission> getUserPermission(Long id);
	/**
	 * 返回所有的权限列表
	 */
	List<Permission> getAllPermission();
	/**
	 * 保存所有权限
	 */
	void saveAll(List<Permission> permissions);
	/**
	 * 查询总数
	 * @param qu
	 * @return
	 */
	Long queryTotal(BaseQuery qu);
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	List<Permission> query(BaseQuery qu);
}
