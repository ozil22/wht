package com.huashidai.weihuotong.service;

import java.util.Map;

import com.huashidai.weihuotong.domain.StoreFavorites;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.StoreFavoritesQuery;

public interface IStoreFavoritesService {
	/**
	 * 收藏和取消收藏
	 * @param storeId
	 * @param userId
	 */
	Map<String,Object> updateStoreFavorites(Long storeId,Long userId);
	
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<StoreFavorites> query(StoreFavoritesQuery qu);
	/**
	 * 查询店铺
	 * @param qu
	 * @return 封装好的APP数据
	 */
	Map<String,Object> queryMap(StoreFavoritesQuery qu);
	/**
	 * 判断是否已经收藏(0未收藏,1已收藏)
	 * @param qu
	 * @return 
	 */
	Map<String,Object> isFavorites(StoreFavoritesQuery qu);
}
