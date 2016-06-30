package com.huashidai.weihuotong.mapper;


import com.huashidai.weihuotong.domain.TotalOrder;

public interface TotalOrderMapper {
	/**
	 * 保存
	 */
	void save(TotalOrder totalOrder);
	/**
	 * 更新
	 */
	void update(TotalOrder totalOrder);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	TotalOrder get(Long id);
}
