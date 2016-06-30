package com.huashidai.weihuotong.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.AdPositionId;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.query.AdPositionIdQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.service.IAdPositionIdService;
import com.huashidai.weihuotong.system.MethodAnnotation;
import com.huashidai.weihuotong.system.MethodAnnotation.ResourceType;
import com.huashidai.weihuotong.utils.AjaxResult;

@Controller
@RequestMapping("/adPositionId")
public class AdPositionIdCotroller {

	@Autowired
	IAdPositionIdService adPositionIdService;

	/**
	 * 主页
	 * @return
	 */
	@MethodAnnotation(name = "主页", type = ResourceType.广告位)
	@RequestMapping("/index")
	public String adPositionId() {
		return "adPositionId/adPositionId";
	}

	/**
	 * 高级查询+分页
	 * 
	 * @param req
	 * @return
	 */
	@MethodAnnotation(name = "查询", type = ResourceType.广告位)
	@RequestMapping("/query")
	@ResponseBody
	public PageResult<AdPositionId> query(AdPositionIdQuery qu) {
		PageResult<AdPositionId> list = adPositionIdService.query(qu);
		return list;
	}

	/**
	 * 删除
	 * 
	 * @param id
	 * @return
	 */
	@MethodAnnotation(name = "删除", type = ResourceType.广告位)
	@RequestMapping("/delete")
	@ResponseBody
	public AjaxResult delete(Long id) {
		AjaxResult ar;
		try {
			adPositionIdService.delete(id);
			ar = new AjaxResult();
		} catch (LogicException e) {

			ar = new AjaxResult(e.getMessage(), e.getErrorCode());
		}
		return ar;
	}

	/**
	 * 
	 * 添加和修改
	 */
	@MethodAnnotation(name = "编辑", type = ResourceType.广告位)
	@RequestMapping("/save")
	@ResponseBody
	public AjaxResult save(AdPositionId adPositionId)
			throws IOException {
		AjaxResult ar;
		try {
			// 判断是新建还是更新
			if (adPositionId != null && adPositionId.getId() != null) {
				adPositionIdService.update(adPositionId);
				ar = new AjaxResult();
			} else {
				adPositionIdService.save(adPositionId);
				ar = new AjaxResult();
			}
		} catch (Exception e) {
			e.printStackTrace();
			ar = new AjaxResult("添加失败！！", null);
		}
		return ar;
	}
}
