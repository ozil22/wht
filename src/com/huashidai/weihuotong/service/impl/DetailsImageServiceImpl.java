package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.DetailsImage;
import com.huashidai.weihuotong.mapper.DetailsImageMapper;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IDetailsImageService;

@Service
public class DetailsImageServiceImpl implements IDetailsImageService {
	@Autowired
	private DetailsImageMapper detailsImageMapper;

	@CacheEvict
	@Override
	public void save(DetailsImage detailsImage) {
		detailsImageMapper.save(detailsImage);
	}

	@CacheEvict
	@Override
	public void update(DetailsImage detailsImage) {
		detailsImageMapper.update(detailsImage);
	}

	@CacheEvict
	@Override
	public void delete(Long id) {
		detailsImageMapper.delete(id);
	}

	@Cacheable
	@Override
	public DetailsImage get(Long id) {
		return detailsImageMapper.get(id);
	}

	@Cacheable
	@Override
	public List<DetailsImage> getAll() {
		return detailsImageMapper.getAll();
	}

	@Cacheable
	@Override
	public List<DetailsImage> getByGoods(Long goodsId) {
		return detailsImageMapper.getByGoods(goodsId);
	}

}
