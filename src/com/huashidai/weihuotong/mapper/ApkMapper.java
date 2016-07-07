package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.Apk;
import com.huashidai.weihuotong.query.BaseQuery;

public interface ApkMapper {

	void save(Apk apk);

	void delete(Long id);

	Apk getNewest();

	Apk get(Long id);

	/**
	 * 高级查询
	 */
	List<Apk> query(BaseQuery qu);

	/**
	 * 查询总数
	 */
	Long queryTotal(BaseQuery qu);

}