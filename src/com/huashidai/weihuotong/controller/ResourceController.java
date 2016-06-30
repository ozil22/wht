package com.huashidai.weihuotong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.Resource;
import com.huashidai.weihuotong.service.IResourceService;

@Controller
@RequestMapping("resource")
public class ResourceController {

	//注入service接口
	@Autowired
	IResourceService resourceService;
	
	/*
	 * 查询所有
	 */
	@RequestMapping("/list")
	@ResponseBody
	public List<Resource> roleAll(){
		List<Resource> list = resourceService.getAll();
		return list;
	}
}
