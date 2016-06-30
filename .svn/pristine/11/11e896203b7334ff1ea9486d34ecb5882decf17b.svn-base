package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.Webpage;
import com.huashidai.weihuotong.mapper.WebpageMapper;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IWebpageService;

@Service
public class WebpageServiceImpl implements IWebpageService {
	@Autowired
	private WebpageMapper webpageMapper;

	@CacheEvict
	@Override
	public void save(Webpage webpage) {
		webpageMapper.save(webpage);
	}

	@CacheEvict
	@Override
	public void update(Webpage webpage) {
		webpageMapper.update(webpage);
	}

	@CacheEvict
	@Override
	public void delete(Long id) {
		webpageMapper.delete(id);
	}

	@Cacheable
	@Override
	public Webpage get(Long id) {
		return webpageMapper.get(id);
	}

	@Cacheable
	@Override
	public List<Webpage> getAll() {
		return webpageMapper.getAll();
	}

}
