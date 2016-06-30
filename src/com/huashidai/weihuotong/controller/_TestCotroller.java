package com.huashidai.weihuotong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.utils.SMSUtil;

@Controller
@RequestMapping("/test")
public class _TestCotroller {

	/**
	 * 测试主页
	 * @return
	 */
	@RequestMapping("/index")
	public String adPositionId() {
		System.out.println(111111);
		return "forward:/WEB-INF/test/upload.jsp";
	}
	/**
	 * 测试短信
	 * @return
	 */
	@RequestMapping("/sms")
	@ResponseBody
	public void sms() {
		SMSUtil.sendSMS("25847", "13980928652", "公司名字");
	}

}
