package com.huashidai.weihuotong.service.impl;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.User;
import com.huashidai.weihuotong.domain.UserImage;
import com.huashidai.weihuotong.mapper.UserImageMapper;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IUserImageService;
import com.huashidai.weihuotong.service.IUserService;
import com.huashidai.weihuotong.utils.FileUtil;

@Service
public class UserImageServiceImpl implements IUserImageService {
	@Autowired
	private UserImageMapper userImageMapper;
	@Autowired
	private IUserService userService;

	@CacheEvict
	@Override
	public void updateByUser(MultipartFile[] image, Long userId, int mode)
			throws IOException {
		if (mode == 1) {
			List<UserImage> images = userImageMapper.getByUser(userId);
			for (UserImage userImage : images) {
				FileUtil.deleteFile(userImage.getSrc());
			}
			userImageMapper.deleteByUser(userId);
		}
		saveByUser(image, userId);
	}

	@CacheEvict
	@Override
	public void saveByUser(MultipartFile[] image, Long userId)
			throws IOException {
		User user = userService.get(userId);
		for (MultipartFile mf : image) {
			String src = FileUtil.saveFile(mf, "userImage");
			// 设置用户头像
			if (user.getHeadImage() == null) {
				user.setHeadImage(src);
				userService.update(user);
			}
			UserImage userImage = new UserImage();
			userImage.setSrc(src);
			userImage.setUser(new User(userId));
			userImageMapper.save(userImage);
		}
	}

	@Cacheable
	@Override
	public List<UserImage> getByUser(Long id) {
		return userImageMapper.getByUser(id);
	}

}