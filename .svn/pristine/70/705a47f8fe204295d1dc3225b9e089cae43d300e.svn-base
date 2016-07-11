package com.huashidai.weihuotong.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.SystemDictionaryItem;
import com.huashidai.weihuotong.service.ISystemDictionaryItemService;
import com.huashidai.weihuotong.system.MethodAnnotation;
import com.huashidai.weihuotong.system.MethodAnnotation.ResourceType;

@Controller
@RequestMapping("/systemDictionaryItem")
public class SystemDictionaryItemCotroller {
	@Autowired
	ISystemDictionaryItemService systemDictionaryItemService;

	@MethodAnnotation(name = "明细列表", type = ResourceType.数据字典)
	@ResponseBody
	@RequestMapping("/list")
	private List<SystemDictionaryItem> SystemDictionaryItemList(Long id) {
		return systemDictionaryItemService.getList(id);
	}

	// 删除
	@MethodAnnotation(name = "明细删除", type = ResourceType.数据字典)
	@ResponseBody
	@RequestMapping("/delete")
	private Map<String, Object> delete(Long id) {
		Map<String, Object> map = new HashMap<>();// 创建一个map来装返回的信息
		try {
			if (id != null) {
				systemDictionaryItemService.delete(id);
				map.put("success", true);// 添加返回的信息
				map.put("msg", "恭喜您,删除成功!");// 添加返回的信息
			}
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success", false);
			map.put("msg", "删除失败!");
			return map;
		}
	}

	// 保存和更新
	@MethodAnnotation(name = "明细编辑", type = ResourceType.数据字典)
	@ResponseBody
	@RequestMapping("/save")
	private Map<String, Object> save(SystemDictionaryItem systemDictionaryItem) {
		Map<String, Object> map = new HashMap<>();// 创建一个map来装返回的信息
		try {
			// 判断是新建还是更新
			if (systemDictionaryItem != null
					&& systemDictionaryItem.getId() != null) {
				System.out.println(systemDictionaryItem
						+ "==================================");
				systemDictionaryItemService.update(systemDictionaryItem);
				map.put("success", true);// 添加返回的信息
				map.put("msg", "恭喜您,更新成功!");// 添加返回的信息
			} else {
				systemDictionaryItemService.save(systemDictionaryItem);
				map.put("success", true);
				map.put("msg", "恭喜您,保存成功!");
			}
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success", false);
			map.put("msg", "保存失败!");
			return map; // 返回失败的信息
		}
	}
}
