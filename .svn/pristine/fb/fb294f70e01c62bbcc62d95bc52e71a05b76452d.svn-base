package com.huashidai.weihuotong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.ArticleComment;
import com.huashidai.weihuotong.query.ArticleCommentQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.service.IArticleCommentService;
import com.huashidai.weihuotong.utils.AjaxResult;
import com.huashidai.weihuotong.utils.MethodAnnotation;
import com.huashidai.weihuotong.utils.MethodAnnotation.ResourceType;

@Controller
@RequestMapping("/articleComment")
public class ArticleCommentCotroller {

	@Autowired
	IArticleCommentService articleCommentService;

	/**
	 * 高级查询+分页
	 * 
	 * @param req
	 * @return
	 */
	@MethodAnnotation(name = "查询", type = ResourceType.文章评论)
	@RequestMapping("/query")
	@ResponseBody
	public PageResult<ArticleComment> query(ArticleCommentQuery qu) {
		PageResult<ArticleComment> list = articleCommentService.query(qu);
		return list;
	}

	/**
	 * 删除
	 * 
	 * @param id
	 * @return
	 */
	@MethodAnnotation(name = "删除", type = ResourceType.文章评论)
	@RequestMapping("/delete")
	@ResponseBody
	public AjaxResult delete(Long id) {
		AjaxResult ar;
		try {
			articleCommentService.delete(id);
			ar = new AjaxResult();
		} catch (Exception e) {
			ar = new AjaxResult("删除失败", null);
		}
		return ar;
	}
}
