package com.huashidai.weihuotong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.Apk;
import com.huashidai.weihuotong.query.BaseQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.service.IApkService;
import com.huashidai.weihuotong.system.MethodAnnotation;
import com.huashidai.weihuotong.system.MethodAnnotation.ResourceType;
import com.huashidai.weihuotong.utils.AjaxResult;

@Controller
@RequestMapping("/apk")
public class ApkCotroller {

	@Autowired
	IApkService apkService;

	/**
	 * 主页
	 * @return
	 */
	@MethodAnnotation(name = "主页", type = ResourceType.APP)
	@RequestMapping("/index")
	public String apk() {
		return "apk/apk";
	}

	/**
	 * 高级查询+分页
	 * 
	 * @param req
	 * @return
	 */
	@MethodAnnotation(name = "查询", type = ResourceType.APP)
	@RequestMapping("/query")
	@ResponseBody
	public PageResult<Apk> query(BaseQuery qu) {
		PageResult<Apk> result = apkService.query(qu);
		return result;
	}
	
	/*
	 * 上传安装包
	 */
	@MethodAnnotation(name = "上传", type = ResourceType.APP)
	@RequestMapping("/save")
	@ResponseBody
	public AjaxResult save(Apk apk, MultipartFile file) {
		AjaxResult ar;
		try {
			apkService.save(apk, file);
			ar = new AjaxResult();
		} catch (Exception e) {
			ar = new AjaxResult("操作失败", null);
		}
		return ar;
	}
	/*
	 * 删除安卓安装包
	 */
	@MethodAnnotation(name = "删除", type = ResourceType.APP)
	@RequestMapping("/delete")
	@ResponseBody
	public AjaxResult delete(Long id) {
		AjaxResult ar;
		try {
			apkService.delete(id);
			ar = new AjaxResult();
		} catch (Exception e) {
			ar = new AjaxResult("操作失败", null);
		}
		return ar;
	}

}
