package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.Menu;
import com.huashidai.weihuotong.domain.Role_Menu;
import com.huashidai.weihuotong.mapper.MenuMapper;
import com.huashidai.weihuotong.service.IMenuService;

@Service
public class MenuServiceImpl implements IMenuService {

	@Autowired
	private MenuMapper menuMapper;

	/*
	 * 查询出菜单栏中的父类节点
	 */
	@Override
	public List<Menu> findByParentList() {
		List<Menu> parentList = menuMapper.findByParentList();

		return parentList;
	}

	/*
	 * 根据id的值,查询出相对应的子节点的节点
	 */
	@Override
	public List<Menu> findByChildList(Long id) {
		List<Menu> childList = menuMapper.findByChildList(id);
		return childList;
	}

	@Override
	public Menu[] getMenuResult() {
		Menu[] menus = new Menu[findByParentList().size()];

		for (int i = 0; i < menus.length; i++) {
			menus[i] = findByParentList().get(i);
			menus[i].setChildren(findByChildList(menus[i].getId()));
		}
		return menus;
	}

	@Override
	public List<Menu> getAll() {
		return menuMapper.getAll();
	}

	@Override
	public Menu findRoles(Long id) {
		return menuMapper.findRoles(id);
	}

	@Override
	public void saveRelativity(Role_Menu rm) {
		menuMapper.saveRelativity(rm);
	}

}
