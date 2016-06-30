package com.huashidai.weihuotong.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.Store;
import com.huashidai.weihuotong.domain.StoreFavorites;
import com.huashidai.weihuotong.mapper.StoreFavoritesMapper;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.StoreFavoritesQuery;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IStoreFavoritesService;
import com.huashidai.weihuotong.service.IStoreService;

@Service
public class StoreFavoritesServiceImpl implements IStoreFavoritesService {
	@Autowired
	private StoreFavoritesMapper storeFavoritesMapper;
	@Autowired
	private IStoreService storeService;
	@Cacheable
	@Override
	public PageResult<StoreFavorites> query(StoreFavoritesQuery qu) {
		// 统计查询
		Long total = storeFavoritesMapper.queryTotal(qu);
		// 分页查询
		List<StoreFavorites> rows = storeFavoritesMapper.query(qu);
		return new PageResult<StoreFavorites>(rows, qu.getPageSize(), qu.getCurrentPage(), total.intValue());
	}
	@Cacheable
	@Override
	public Map<String, Object> queryMap(StoreFavoritesQuery qu) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageResult<StoreFavorites> pageResult = query(qu);
		map.put("total", pageResult.getTotalPage());
		ArrayList<Object> sfs = new ArrayList<Object>();
		List<StoreFavorites> datas = pageResult.getRows();
		for (StoreFavorites a : datas) {
			Map<String, Object> sf = new HashMap<String, Object>();
			sf.put("id", a.getId());
			sf.put("image", a.getImage());
			sf.put("time", a.getTime());
			sf.put("storeId", a.getStoreId());
			sf.put("storeName", a.getStoreName());
			sfs.add(sf);
		}
		map.put("storeFavorites", sfs);
		return map;
	}
	@CacheEvict
	@Override
	public Map<String,Object> updateStoreFavorites(Long storeId, Long userId) {
		Map<String, Object> map = new HashMap<String, Object>();
		StoreFavorites storeFavorites = storeFavoritesMapper.get(storeId, userId);
		if (storeFavorites != null) {
			storeFavoritesMapper.delete(storeFavorites.getId());
			//收藏量减一
			storeService.updateHot(-1, storeId);
			map.put("state", 0);
			return map;
		}
		StoreFavorites sf = new StoreFavorites();
		sf.setUserId(userId);
		sf.setTime(new Date());
		sf.setStoreId(storeId);
		Store store = storeService.get(storeId);
		sf.setStoreName(store.getName());
		sf.setImage(store.getHeadImage());
		storeFavoritesMapper.save(sf);
		//收藏量加一
		storeService.updateHot(1, storeId);
		map.put("state", 1);
		return map;
	}
	@Cacheable
	@Override
	public Map<String, Object> isFavorites(StoreFavoritesQuery qu) {
		Map<String, Object> map = new HashMap<String, Object>();
		Long queryTotal = storeFavoritesMapper.queryTotal(qu);
		if (queryTotal != 0) {
			map.put("isFavorites", 1);
		}else {
			map.put("isFavorites", 0);
		}
		return map;
	}

}