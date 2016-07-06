package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.Express;
import com.huashidai.weihuotong.mapper.ExpressMapper;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IExpressService;

@Service
public class IExpressServiceImpl implements IExpressService {
	@Autowired
	private ExpressMapper expressMapper;

	@CacheEvict
	@Override
	public void save(Express express) {
		expressMapper.save(express);
	}

	@Cacheable(expire = 0)
	@Override
	public Express get(Long id) {
		return expressMapper.get(id);
	}

	@CacheEvict
	@Override
	public void delete(Long id) {
		expressMapper.delete(id);
	}

	@Cacheable(expire = 0)
	@Override
	public List<Express> getAll() {
		return expressMapper.getAll();
	}
}
