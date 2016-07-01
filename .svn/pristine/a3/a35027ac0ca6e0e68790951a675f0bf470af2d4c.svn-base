package com.huashidai.weihuotong.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.ArticleType;
import com.huashidai.weihuotong.mapper.ArticleTypeMapper;
import com.huashidai.weihuotong.service._TestService;

@Service
public class _TestServiceServiceImpl implements _TestService {
	@Autowired
	private ArticleTypeMapper articleTypeMapper;

	@Override
	public void testNot_supported() {
		for (int i = 0; i < 10; i++) {
			ArticleType articleType = new ArticleType();
			articleType.setName(i+"cs");
			articleTypeMapper.save(articleType);
			if (i == 5) {
				System.out.println(9/0);
			}
		}
	}

	
}
