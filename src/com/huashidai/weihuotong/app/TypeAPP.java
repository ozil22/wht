package com.huashidai.weihuotong.app;
/**
 * 商品相关的接口
 */
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.service.ITypeService;
import com.huashidai.weihuotong.utils.AppResult;

@Controller
@RequestMapping("/app")
public class TypeAPP {
	@Autowired
	private ITypeService typeService;
	
	/**
	 * 根据上级分类获取下级分类
	 * @param parentId
	 * @return
	 */
	@RequestMapping("/typesByParent")
	@ResponseBody
	public AppResult typesByParent(Long parentId){
		
		AppResult appResult = null;
		try{
			List<Object> types = typeService.typesByParent(parentId);
			// 封装响应信息
			appResult = new AppResult(types);
		}catch(Exception e){
			// 封装响应信息
			appResult = new AppResult();
		}
		return appResult;
	}
	
	/**
	 * 进入底栏分类
	 * 获取所有一级分类和第一个分类的详细
	 * @param goodsId
	 * @return
	 */
	@RequestMapping("/parentsAndItem")
	@ResponseBody
	public AppResult parentsAndItem(){
		AppResult appResult = null;
		try{
			Map<String,Object> data = new HashMap<String,Object>();
			//一级分类
			List<Object> parents = typeService.typesByParent(null);
			data.put("parents", parents);
			//获取第一个一级分类id
			@SuppressWarnings("unchecked")
			Map<String,Object> parent = (Map<String, Object>) parents.get(0);
			Long parentId = (Long) parent.get("id");
			//二级分类和三级分类
			List<Object> items = typeService.getItemByParent(parentId);
			data.put("seconds", items);
			// 封装响应信息
			appResult = new AppResult(data);
		}catch(Exception e){
			e.printStackTrace();
			// 封装响应信息
			appResult = new AppResult();
		}
		return appResult;
	}
	
	/**
	 * 获取所有一级分类的详细
	 * @param goodsId
	 * @return
	 */
	@RequestMapping("/typeItem")
	@ResponseBody
	public AppResult typeItem(Long parentId){
		AppResult appResult = null;
		if (parentId == null) {
			return appResult = new AppResult(null,null);
		}
		try{
			//二级分类和三级分类
			List<Object> items = typeService.getItemByParent(parentId);
			// 封装响应信息
			appResult = new AppResult(items);
		}catch(Exception e){
			e.printStackTrace();
			// 封装响应信息
			appResult = new AppResult();
		}
		return appResult;
	}
	
}
