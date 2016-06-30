package com.huashidai.weihuotong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.huashidai.weihuotong.domain.Recommendation;
import com.huashidai.weihuotong.query.BaseQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.service.IRecommendationService;
import com.huashidai.weihuotong.utils.MethodAnnotation;
import com.huashidai.weihuotong.utils.MethodAnnotation.ResourceType;

@Controller
@RequestMapping("/recommendation")
public class RecommendationCotroller {

	@Autowired
	IRecommendationService recommendationService;

	/**
	 * 主页
	 * @return
	 */
	@MethodAnnotation(name = "主页", type = ResourceType.意见反馈)
	@RequestMapping("/index")
	public String recommendation() {
		return "recommendation/recommendation";
	}
	/**
	 * 反馈内容
	 * @return
	 */
	@MethodAnnotation(name = "反馈内容", type = ResourceType.意见反馈)
	@RequestMapping("/showRecommendation")
	public ModelAndView showRecommendation(Long id) {
		Recommendation recommendation = recommendationService.get(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("content", recommendation.getContent());
		modelAndView.setViewName("/recommendation/content");
		return modelAndView;
	}

	/**
	 * 高级查询+分页
	 * 
	 * @param req
	 * @return
	 */
	@MethodAnnotation(name = "查询", type = ResourceType.意见反馈)
	@RequestMapping("/query")
	@ResponseBody
	public PageResult<Recommendation> query(BaseQuery qu) {
		PageResult<Recommendation> list = recommendationService.query(qu);
		return list;
	}
}
