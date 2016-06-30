package com.huashidai.weihuotong.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.Brand;
import com.huashidai.weihuotong.query.BaseQuery;
import com.huashidai.weihuotong.query.PageResult;

public interface IBrandService {
	/**
	 * 添加
	 */
	void save(MultipartFile image,Brand brand)throws IOException;
	/**
	 * 更新
	 */
	void update(MultipartFile image,Brand brand)throws IOException;
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<Brand> query(BaseQuery qu);
	/**
	 * 全部品牌
	 */
	List<Object> getAll();
}
