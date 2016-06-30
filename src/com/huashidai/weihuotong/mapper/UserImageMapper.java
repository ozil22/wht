package com.huashidai.weihuotong.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.UserImage;

public interface UserImageMapper {
	
	void save(UserImage userImage);
	
	void update(UserImage userImage);
	
	void delete(Long id);
	
	UserImage get(Long id);
	
	List<UserImage> getAll();
	
	List<UserImage> getByUser(@Param("userId")Long userId);
	
	void deleteByUser(@Param("userId")Long userId);
} 
