package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.ProxyGoods;
import com.huashidai.weihuotong.mapper.ProxyGoodsMapper;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IProxyGoodsService;

@Service
public class ProxyGoodsServiceImpl implements IProxyGoodsService {
	@Autowired
	private ProxyGoodsMapper proxyGoodsMapper;

	@CacheEvict
	@Override
	public void save(ProxyGoods proxyGoods) {
		proxyGoodsMapper.save(proxyGoods);
	}

	@CacheEvict
	@Override
	public void update(ProxyGoods proxyGoods) {
		proxyGoodsMapper.update(proxyGoods);
	}

	@CacheEvict
	@Override
	public void delete(Long id) {
		proxyGoodsMapper.delete(id);
	}

	@Cacheable
	@Override
	public ProxyGoods get(Long id) {
		return proxyGoodsMapper.get(id);
	}

	@Cacheable
	@Override
	public List<ProxyGoods> getAll() {
		return proxyGoodsMapper.getAll();
	}

}
