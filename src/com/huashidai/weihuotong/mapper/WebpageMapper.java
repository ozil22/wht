package com.huashidai.weihuotong.mapper;


import java.util.List;

import com.huashidai.weihuotong.domain.Webpage;

public interface WebpageMapper {
	/**
	 * 添加
	 */
	void save(Webpage webpage);
	/**
	 * 更新
	 */
	void update(Webpage webpage);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	Webpage get(Long id);
	/**
	 * 查询所有
	 */
	List<Webpage> getAll();
}
