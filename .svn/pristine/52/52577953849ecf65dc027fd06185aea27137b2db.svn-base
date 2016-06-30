package com.huashidai.weihuotong.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.UserImage;


public interface IUserImageService {
	/**
	 * 修改用户图片
	 * @param image
	 * @param userId
	 * @param mode 更新方式 0 添加 1覆盖
	 */
	void updateByUser(MultipartFile[] image, Long userId , int mode) throws IOException;
	/**
	 * 保存用户图片
	 * @param image
	 * @param userId
	 */
	void saveByUser(MultipartFile[] image, Long userId) throws IOException;
	/**
	 * 获取用户所有图片
	 * @param id
	 * @return
	 */
	List<UserImage> getByUser(Long id);
}
