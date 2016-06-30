package com.huashidai.weihuotong.JPush;

import org.springframework.stereotype.Service;

@Service
public interface IJPushService {
	void push(Long userId,String title,String content);
}
