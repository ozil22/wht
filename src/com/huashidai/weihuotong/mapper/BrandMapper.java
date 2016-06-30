package com.huashidai.weihuotong.mapper;


import java.util.List;

import com.huashidai.weihuotong.domain.Brand;
import com.huashidai.weihuotong.query.BaseQuery;

public interface BrandMapper {
	/**
	 * 添加
	 */
	void save(Brand brand);
	/**
	 * 更新
	 */
	void update(Brand brand);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	Brand get(Long id);
	/**
	 * 查询所有
	 */
	List<Brand> getAll();
	/**
	 * 高级查询
	 */
	List<Brand> query(BaseQuery qu);
	/**
	 * 查询总数
	 */
	Long queryTotal(BaseQuery qu);
}
