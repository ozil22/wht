package com.huashidai.weihuotong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.Goods;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.query.GoodsQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.service.IGoodsService;
import com.huashidai.weihuotong.system.MethodAnnotation;
import com.huashidai.weihuotong.system.MethodAnnotation.ResourceType;
import com.huashidai.weihuotong.utils.AjaxResult;

@Controller
@RequestMapping("/goods")
public class GoodsCotroller {
	
	@Autowired
	IGoodsService goodsService;
	
	/**
	 * 在菜单栏中点击用户管理的之后,进入到这个页面的跳转
	 * @return
	 */
	@MethodAnnotation(name="主页",type=ResourceType.商品)
	@RequestMapping("/index")
	public String goods() {
		return "goods/goods";
	}

	/**
	 * 高级查询+分页
	 * @param req
	 * @return
	 */
	@MethodAnnotation(name="查询",type=ResourceType.商品)
	@RequestMapping("/query")
	@ResponseBody
	public PageResult<Goods> query(GoodsQuery qu) {
		PageResult<Goods> list = goodsService.query(qu);
		return list;
	}
	
	/**
	 * 删除商品
	 * @param id 商品id
	 * @return
	 */
	@MethodAnnotation(name="删除",type=ResourceType.商品)
	@RequestMapping("/delete")
	@ResponseBody
	public AjaxResult delete(Long id,String remark){
		AjaxResult ar ;
		try{
			goodsService.delete(id,remark);

			ar= new AjaxResult();
		}catch (LogicException e) {
			
			ar= new AjaxResult("删除失败:" + e.getMessage(),e.getErrorCode());
		}
		return ar;
	} 
	
	/**
	 * 
	 * 下架操作
	 */
	@MethodAnnotation(name="下架",type=ResourceType.商品)
	@RequestMapping("/leave")
	@ResponseBody
	public AjaxResult leave(Long id,String remark){
		AjaxResult ar ;
		try{
			goodsService.leave(id,remark);
			
			ar= new AjaxResult();
		}catch (LogicException e) {
			
			ar= new AjaxResult("下架失败！！",e.getErrorCode());
		}
		return ar;
	} 
	/**
	 * 
	 * 上架操作
	 */
	@MethodAnnotation(name="上架",type=ResourceType.商品)
	@RequestMapping("/up")
	@ResponseBody
	public AjaxResult up(Long id){
		AjaxResult ar ;
		try{
			goodsService.up(id);
			
			ar= new AjaxResult();
		}catch (LogicException e) {
			
			ar= new AjaxResult("上架失败！！",e.getErrorCode());
		}
		return ar;
	} 
}
