package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.Province;

public interface ProvinceMapper {

	Province get(Long id);

	List<Province> getAll();

}