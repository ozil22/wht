package com.huashidai.weihuotong.mapper;


import java.util.List;

import com.huashidai.weihuotong.domain.ProxyGoods;

public interface ProxyGoodsMapper {
	/**
	 * 保存
	 */
	void save(ProxyGoods proxyGoods);
	/**
	 * 更新
	 */
	void update(ProxyGoods proxyGoods);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	ProxyGoods get(Long id);
	/**
	 * 查询所有
	 */
	List<ProxyGoods> getAll();
}
