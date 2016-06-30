package com.huashidai.weihuotong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.Account;
import com.huashidai.weihuotong.domain.AccountFlow;
import com.huashidai.weihuotong.query.AccountFlowQuery;
import com.huashidai.weihuotong.query.AccountQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.service.IAccountFlowService;
import com.huashidai.weihuotong.service.IAccountService;
import com.huashidai.weihuotong.utils.MethodAnnotation;
import com.huashidai.weihuotong.utils.MethodAnnotation.ResourceType;

@Controller
@RequestMapping("/account")
public class AccountCotroller {

	@Autowired
	IAccountService accountService;
	@Autowired
	IAccountFlowService accountFlowService;

	/**
	 * 主页
	 * @return
	 */
	@MethodAnnotation(name = "主页", type = ResourceType.用户账户)
	@RequestMapping("/index")
	public String account() {
		return "user/account";
	}

	/**
	 * 高级查询+分页
	 * 
	 * @param req
	 * @return
	 */
	@MethodAnnotation(name = "查询", type = ResourceType.用户账户)
	@RequestMapping("/query")
	@ResponseBody
	public PageResult<Account> query(AccountQuery qu) {
		PageResult<Account> list = accountService.query(qu);
		return list;
	}
	
	/*
	 * 获取账户流水
	 */
	@MethodAnnotation(name = "账户流水", type = ResourceType.用户账户)
	@RequestMapping("/accountFlow")
	@ResponseBody
	public PageResult<AccountFlow> accountFlow(AccountFlowQuery qu) {
		return accountFlowService.query(qu);
	}

}
