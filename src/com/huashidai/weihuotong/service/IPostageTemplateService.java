package com.huashidai.weihuotong.service;

import java.util.List;
import java.util.Map;


public interface IPostageTemplateService {
	
	/**
	 * 获取店铺所有运费模板
	 */
	List<Map<String, Object>> getByStore(Long storeId);
	/**
	 * 获取单个运费模板
	 * @param postageTemplateId
	 * @return
	 */
	Map<String, Object> get(Long postageTemplateId);
	
	
	
}
