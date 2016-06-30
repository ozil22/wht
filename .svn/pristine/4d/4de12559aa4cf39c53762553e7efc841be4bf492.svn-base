package com.huashidai.weihuotong.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.StoreFavorites;
import com.huashidai.weihuotong.query.StoreFavoritesQuery;

public interface StoreFavoritesMapper {
	/**
	 * 添加
	 */
	void save(StoreFavorites storeFavorites);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 查询
	 * @param storeId 店铺id
	 * @param userId 用户id
	 * @return
	 */
	StoreFavorites get(@Param("storeId")Long storeId,@Param("userId")Long userId);
	/**
	 * 高级查询
	 */
	List<StoreFavorites> query(StoreFavoritesQuery qu);
	/**
	 * 查询总数
	 */
	Long queryTotal(StoreFavoritesQuery qu);
}
