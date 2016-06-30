package com.huashidai.weihuotong.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.SystemAccount;
import com.huashidai.weihuotong.domain.SystemAccountFlow;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.SystemAccountFlowQuery;
import com.huashidai.weihuotong.service.ISystemAccountFlowService;
import com.huashidai.weihuotong.service.ISystemAccountService;
import com.huashidai.weihuotong.system.MethodAnnotation;
import com.huashidai.weihuotong.system.MethodAnnotation.ResourceType;

@Controller
@RequestMapping("/systemAccount")
public class SystemAccountCotroller {

	@Autowired
	ISystemAccountService systemAccountService;
	@Autowired
	ISystemAccountFlowService systemAccountFlowService;

	/**
	 * 主页
	 * @return
	 */
	@MethodAnnotation(name = "主页", type = ResourceType.系统账户)
	@RequestMapping("/index")
	public String systemSystemAccount() {
		return "systemAccount/systemAccount";
	}

	/**
	 * 查询
	 * @return
	 */
	@MethodAnnotation(name = "查询", type = ResourceType.系统账户)
	@RequestMapping("/get")
	@ResponseBody
	public Map<String,Object> get() {
		Map<String,Object> map = new HashMap<String,Object>();
		List<SystemAccount> rows = new ArrayList<SystemAccount>();
		SystemAccount account = systemAccountService.get();
		rows.add(account);
		map.put("rows", rows);
		return map;
	}
	
	/*
	 * 获取账户流水
	 */
	@MethodAnnotation(name = "账户流水", type = ResourceType.系统账户)
	@RequestMapping("/systemAccountFlow")
	@ResponseBody
	public PageResult<SystemAccountFlow> systemSystemAccountFlow(SystemAccountFlowQuery qu) {
		return systemAccountFlowService.query(qu);
	}

}
