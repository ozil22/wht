package com.huashidai.weihuotong.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.StoreAuth;

public interface StoreAuthMapper {
	/**
	 * 保存
	 */
	void save(StoreAuth storeAuth);
	/**
	 * 更新
	 */
	void update(StoreAuth storeAuth);
	/**
	 * 修改状态
	 */
	void updateState(StoreAuth storeAuth);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	StoreAuth get(Long id);
	/**
	 * 获取店铺的认证信息
	 */
	StoreAuth getByStore(@Param("storeId")Long storeId);
	/**
	 * 查询所有
	 */
	List<StoreAuth> getAll();
}
