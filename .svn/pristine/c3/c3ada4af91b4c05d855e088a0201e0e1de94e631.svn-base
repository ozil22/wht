package com.huashidai.weihuotong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huashidai.weihuotong.system.MethodAnnotation;
import com.huashidai.weihuotong.system.MethodAnnotation.ResourceType;
/**
 * 系统监控Durid
 * @author ozil
 *
 */
@Controller
@RequestMapping("/monitoring")
public class MonitoringController {

	@MethodAnnotation(name = "主页", type = ResourceType.系统监控)
	@RequestMapping("/index")
	public String index() {
		return "monitoring";
	}
}
