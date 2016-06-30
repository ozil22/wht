package com.huashidai.weihuotong.service.impl;

import java.io.IOException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.Store;
import com.huashidai.weihuotong.domain.StoreAuth;
import com.huashidai.weihuotong.mapper.StoreAuthMapper;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IStoreAuthService;
import com.huashidai.weihuotong.utils.FileUtil;

@Service
public class StoreAuthServiceImpl implements IStoreAuthService {
	@Autowired
	private StoreAuthMapper storeAuthMapper;

	@CacheEvict
	@Override
	public void update(StoreAuth storeAuth) {
		storeAuthMapper.update(storeAuth);
	}

	@CacheEvict
	@Override
	public void updateState(StoreAuth storeAuth) {
		storeAuthMapper.updateState(storeAuth);
	}

	@CacheEvict
	@Override
	public void save(MultipartFile[] file, String linkman, Long storeId)
			throws IOException {
		StoreAuth storeAuth = new StoreAuth();
		storeAuth.setStore(new Store(storeId));
		storeAuth.setApplyTime(new Date());
		storeAuth.setLinkman(linkman);
		for (int i = 0; i < file.length; i++) {
			MultipartFile mf = file[i];
			String image = FileUtil.saveFile(mf, "realAuth");

			if (i == 0) {
				storeAuth.setIdCard1(image);
			}
			if (i == 1) {
				storeAuth.setIdCard2(image);
			}
			if (i == 2) {
				storeAuth.setOtherCard1(image);
			}
			if (i == 3) {
				storeAuth.setOtherCard2(image);
			}
			if (i == 4) {
				storeAuth.setOtherCard3(image);
			}
			if (i == 5) {
				storeAuth.setOtherCard4(image);
			}
		}
		storeAuthMapper.save(storeAuth);
	}

	@Cacheable
	@Override
	public StoreAuth getByStore(Long storeId) {
		return storeAuthMapper.getByStore(storeId);
	}
}
