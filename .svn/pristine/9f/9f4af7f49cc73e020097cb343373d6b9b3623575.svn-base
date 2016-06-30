package com.huashidai.weihuotong.service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.StoreAuth;

public interface IStoreAuthService {
	/**
	 * 根据店铺id获取
	 * @param storeId
	 * @return
	 */
	StoreAuth getByStore(Long storeId);
	
	/**
	 * 更新
	 */
	void update(StoreAuth storeAuth);

	/**
	 * 修改状态
	 */
	void updateState(StoreAuth storeAuth);


	/**
	 * 添加认证信息
	 * 
	 * @param file
	 *            认证图片集合
	 * @param linkman
	 *            经营者
	 * @param storeId
	 *            店铺id
	 */
	void save(MultipartFile[] file, String linkman, Long storeId)
			throws IOException;
}
