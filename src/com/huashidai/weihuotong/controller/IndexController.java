package com.huashidai.weihuotong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/login")
	
	public String execut(){
		System.out.println("进入login。。。。。");
		return "forward:/WEB-INF/pages/login.jsp";
	}
}
