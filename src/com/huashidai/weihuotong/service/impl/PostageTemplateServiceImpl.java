package com.huashidai.weihuotong.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.PostageTemplate;
import com.huashidai.weihuotong.mapper.PostageTemplateMapper;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IPostageTemplateService;

@Service
public class PostageTemplateServiceImpl implements IPostageTemplateService {
	@Autowired
	private PostageTemplateMapper postageTemplateMapper;

	@Cacheable
	@Override
	public List<Map<String, Object>> getByStore(Long storeId) {
		List<Map<String, Object>> PostageTemplates = new ArrayList<Map<String, Object>>();
		List<PostageTemplate> templates = postageTemplateMapper
				.getByStore(storeId);
		for (PostageTemplate postageTemplate : templates) {
			Map<String, Object> map = buildMap(postageTemplate);
			PostageTemplates.add(map);
		}
		return PostageTemplates;
	}

	@Cacheable
	@Override
	public Map<String, Object> get(Long postageTemplateId) {
		PostageTemplate postageTemplate = postageTemplateMapper
				.get(postageTemplateId);
		return buildMap(postageTemplate);
	}

	/**
	 * 构建APP需要的数据格式
	 */
	private Map<String, Object> buildMap(PostageTemplate postageTemplate) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", postageTemplate.getId());
		map.put("name", postageTemplate.getName());
		map.put("one", postageTemplate.getOne());
		map.put("other", postageTemplate.getOther());
		map.put("freeNumber", postageTemplate.getFreeNumber());
		map.put("area", postageTemplate.getArea().split(","));
		return map;
	}
}
