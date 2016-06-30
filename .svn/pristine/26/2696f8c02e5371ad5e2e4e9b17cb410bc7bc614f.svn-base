package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.Menu;
import com.huashidai.weihuotong.domain.Role_Menu;

public interface MenuMapper {
	/*
	 * 查询出菜单栏中的父类节点
	 */
	List<Menu> findByParentList();
	
	/*
	 * 根据id的值,查询出相对应的子节点的节点
	 */
	List<Menu> findByChildList(Long id);
	
	/*
	 * 查询出菜单中的所有的数据信息
	 */
	List<Menu> getAll();
	
	/*
	 * 根据菜单的id来
	 * 	查询出有多少角色可以来访问这个菜单
	 */
	Menu findRoles(Long id);
	
	/*
	 * 保存菜单和角色之间的关系
	 */
	void saveRelativity(Role_Menu rm);
}
