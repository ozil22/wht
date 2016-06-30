package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.Role;
import com.huashidai.weihuotong.domain.Role_Menu;
import com.huashidai.weihuotong.domain.Role_Permission;


public interface RoleMapper {

	/*
	 *  查询出所有的角色信息
	 */
	List<Role> getAll();
	
	/*
	 * 根据传入的id的值,来查询出对应的角色
	 */
	Role get(Long id);
	
	/*
	 * 根据传入的id的值.查询出角色可以访问的菜单信息
	 */
	Role finMenus(Long id);
	
	/*
	 * 保存角色和菜单之间的关系
	 */
	void saveRelativity(Role_Menu rm);
	
	/*
	 * 删除角色与角色对应的菜单之间的关系
	 */
	void deleteRelativity(Role_Menu rm);
	
	/*
	 * 删除一个角色
	 */
	void delete(Long id);
	
	/**
	 * 
	 * @param role
	 * @return  代表成功操作的数据行!!
	 */
	Long save(Role role);
	
	/*
	 * 修改一个角色
	 */
	void update(Role role);
	
	/*
	 * 根据传入的id的值.查询出角色可以访问的菜单信息
	 */
	Role findPermissions(Long id);
	
	/*
	 * 保存角色和权限之间的关系
	 */
	void saveRelativityForPermission(List<Role_Permission> list);
	
	/*
	 * 删除角色与角色对应的菜单之间的关系
	 */
	void deleteRelativityForPermission(Long id);
}
