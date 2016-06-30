package com.huashidai.weihuotong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.SystemLog;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.SystemLogQuery;
import com.huashidai.weihuotong.service.ISystemLogService;
import com.huashidai.weihuotong.system.MethodAnnotation;
import com.huashidai.weihuotong.system.MethodAnnotation.ResourceType;

@Controller
@RequestMapping("/systemLog")
public class SystemLogController {
	@Autowired
	private ISystemLogService systemLogService;

	// 系统日志页面
	@MethodAnnotation(name = "主页", type = ResourceType.系统日志)
	@RequestMapping("/index")
	public String index() {
		return "systemLog/systemLog";
	}

	// 返回列表数据(高级查询)
	@MethodAnnotation(name = "查询", type = ResourceType.系统日志)
	@RequestMapping("/query")
	@ResponseBody
	public PageResult<SystemLog> query(SystemLogQuery q) {
		return systemLogService.query(q);
	}
}
