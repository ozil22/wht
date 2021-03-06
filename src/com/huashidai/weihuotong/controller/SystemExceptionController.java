package com.huashidai.weihuotong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.huashidai.weihuotong.domain.SystemException;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.SystemExceptionQuery;
import com.huashidai.weihuotong.service.ISystemExceptionService;
import com.huashidai.weihuotong.system.MethodAnnotation;
import com.huashidai.weihuotong.system.MethodAnnotation.ResourceType;

@Controller
@RequestMapping("/systemException")
public class SystemExceptionController {
	@Autowired
	private ISystemExceptionService systemExceptionService;

	@MethodAnnotation(name = "主页", type = ResourceType.系统异常)
	@RequestMapping("/index")
	public String index() {
		return "systemLog/systemException";
	}

	@MethodAnnotation(name = "查询", type = ResourceType.系统异常)
	@RequestMapping("/query")
	@ResponseBody
	public PageResult<SystemException> query(SystemExceptionQuery q) {
		return systemExceptionService.query(q);
	}
	/**
	 * 文章内容
	 * @return
	 */
	@RequestMapping("/showException")
	public ModelAndView showArticle(Long id) {
		SystemException systemException = systemExceptionService.get(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("detail", systemException.getExceptionDetail());
		modelAndView.setViewName("/systemLog/exceptionDetail");
		return modelAndView;
	}
}
