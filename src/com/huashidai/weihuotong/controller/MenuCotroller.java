package com.huashidai.weihuotong.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.Menu;
import com.huashidai.weihuotong.service.IMenuService;

@Controller
public class MenuCotroller {
	@Autowired
	IMenuService menuService;
	
	/**
	 * 在页面加载的时候,需要的菜单的数据
	 */
	@RequestMapping("/menu")
	@ResponseBody
	public Menu[] test2(HttpServletRequest req) {
		Menu[] menus = menuService.getMenuResult();
		return menus;
	}
}
