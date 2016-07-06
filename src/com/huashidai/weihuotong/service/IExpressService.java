package com.huashidai.weihuotong.service;

import java.util.List;

import com.huashidai.weihuotong.domain.Express;

public interface IExpressService {
	void save(Express express);

	Express get(Long id);

	void delete(Long id);

	List<Express> getAll();
}
