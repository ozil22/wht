package com.huashidai.weihuotong.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.PostageTemplate;

public interface PostageTemplateMapper {
	/**
	 * 添加
	 */
	void save(PostageTemplate postageTemplate);
	/**
	 * 更新
	 */
	void update(PostageTemplate postageTemplate);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	PostageTemplate get(Long id);
	/**
	 * 获取店铺所有
	 */
	List<PostageTemplate> getByStore(@Param("storeId")Long storeId);
}
