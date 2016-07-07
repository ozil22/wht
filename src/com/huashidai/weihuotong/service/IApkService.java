package com.huashidai.weihuotong.service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.Apk;
import com.huashidai.weihuotong.query.BaseQuery;
import com.huashidai.weihuotong.query.PageResult;

public interface IApkService {
	void save(Apk apk,MultipartFile file) throws IOException;

	void delete(Long id);

	/**
	 * 获取最新
	 * 
	 * @return
	 */
	Apk getNewest();

	/**
	 * 高级查询
	 * 
	 * @param qu
	 * @return
	 */
	PageResult<Apk> query(BaseQuery qu);
}
