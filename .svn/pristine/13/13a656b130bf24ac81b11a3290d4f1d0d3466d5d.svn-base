package com.huashidai.weihuotong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.Withdraw;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.query.WithdrawQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.service.IWithdrawService;
import com.huashidai.weihuotong.system.MethodAnnotation;
import com.huashidai.weihuotong.system.MethodAnnotation.ResourceType;
import com.huashidai.weihuotong.utils.AjaxResult;

@Controller
@RequestMapping("/withdraw")
public class WithdrawCotroller {
	
	@Autowired
	IWithdrawService withdrawService;
	
	/**
	 * @return
	 */
	@MethodAnnotation(name="首页",type=ResourceType.提现申请)
	@RequestMapping("/index")
	public String withdraw() {
		return "user/withdraw";
	}

	/**
	 * 高级查询+分页
	 * @param req
	 * @return
	 */
	@MethodAnnotation(name="查询",type=ResourceType.提现申请)
	@RequestMapping("/query")
	@ResponseBody
	public PageResult<Withdraw> query(WithdrawQuery qu) {
		PageResult<Withdraw> list = withdrawService.query(qu);
		return list;
	}
	
	/**
	 * 提现
	 * @param id
	 * @return
	 */
	@MethodAnnotation(name = "同意提现", type = ResourceType.提现申请)
	@RequestMapping("/agreeApply")
	@ResponseBody
	public AjaxResult agreeApply(Long id) {
		AjaxResult ar;
		try {
			withdrawService.agreeApply(id);
			ar = new AjaxResult();
		} catch (LogicException e) {
			ar = new AjaxResult("提现失败:" + e.getMessage(), e.getErrorCode());
		}
		return ar;
	}

	/**
	 * 拒绝提现
	 * @param id
	 * @param reason 原因
	 * @return
	 */
	@MethodAnnotation(name = "拒绝提现", type = ResourceType.提现申请)
	@RequestMapping("/refuseApply")
	@ResponseBody
	public AjaxResult refuseApply(Long id,String remark) {
		AjaxResult ar;
		try {
			withdrawService.refuseApply(id,remark);
			ar = new AjaxResult();
		} catch (LogicException e) {

			ar = new AjaxResult("操作失败:" + e.getMessage(), e.getErrorCode());
		}
		return ar;
	}
	
}
