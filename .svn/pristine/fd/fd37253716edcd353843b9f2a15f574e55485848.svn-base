package com.huashidai.weihuotong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.Promotion;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.PromotionQuery;
import com.huashidai.weihuotong.service.IPromotionService;
import com.huashidai.weihuotong.system.MethodAnnotation;
import com.huashidai.weihuotong.system.MethodAnnotation.ResourceType;
import com.huashidai.weihuotong.utils.AjaxResult;
import com.huashidai.weihuotong.utils.ConstUtil;

@Controller
@RequestMapping("/promotion")
public class PromotionCotroller {

	@Autowired
	IPromotionService promotionService;

	/**
	 * 主页
	 * @return
	 */
	@MethodAnnotation(name = "主页", type = ResourceType.广告)
	@RequestMapping("/index")
	public String promotion() {
		return "adPositionId/promotion";
	}

	/**
	 * 高级查询+分页
	 * 
	 * @param req
	 * @return
	 */
	@MethodAnnotation(name = "查询", type = ResourceType.广告)
	@RequestMapping("/query")
	@ResponseBody
	public PageResult<Promotion> query(PromotionQuery qu) {
		PageResult<Promotion> list = promotionService.query(qu);
		return list;
	}
	
	/*
	 * 上架
	 */
	@MethodAnnotation(name = "上架", type = ResourceType.广告)
	@RequestMapping("/success")
	@ResponseBody
	public AjaxResult success(Long id) {
		AjaxResult ar;
		try {
			promotionService.updateState(id, ConstUtil.PROMOTION_NORMAL);
			ar = new AjaxResult();
		} catch (LogicException e) {
			ar = new AjaxResult();
		}
		return ar;
	}

	/*
	 * 下架
	 */
	@MethodAnnotation(name = "下架", type = ResourceType.广告)
	@RequestMapping("/failure")
	@ResponseBody
	public AjaxResult failure(Long id,String remark) {
		AjaxResult ar;
		try {
			promotionService.failure(id, remark);
			ar = new AjaxResult();
		} catch (LogicException e) {
			ar = new AjaxResult();
		}
		return ar;
	}
	/*
	 * 删除
	 */
	@MethodAnnotation(name = "删除", type = ResourceType.广告)
	@RequestMapping("/delete")
	@ResponseBody
	public AjaxResult delete(Long id,String remark) {
		AjaxResult ar;
		try {
			promotionService.delete(id, remark);
			ar = new AjaxResult();
		} catch (LogicException e) {
			ar = new AjaxResult(e.getMessage(),e.getErrorCode());
		}
		return ar;
	}
}
