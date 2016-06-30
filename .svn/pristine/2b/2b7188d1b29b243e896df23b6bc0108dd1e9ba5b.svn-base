package com.huashidai.weihuotong.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.User;
import com.huashidai.weihuotong.query.UserQuery;

public interface UserMapper {

	void save(User user);

	void update(User user);

	/**
	 * 更新绑定微信
	 * 
	 * @param user
	 */
	void updateWechat(User user);

	void delete(Long id);

	User get(Long id);

	/**
	 * 根据店铺id查询
	 * 
	 * @param storeId
	 * @return
	 */
	User getByStore(@Param("storeId") Long storeId);

	/**
	 * 根据我的邀请码查询
	 * 
	 * @param storeId
	 * @return
	 */
	User getByCode(@Param("myCode") String myCode);

	/**
	 * 根据微信信息查询
	 * 
	 * @param storeId
	 * @return
	 */
	User getByWechat(@Param("openid") String openid);

	List<User> getAll();

	/**
	 * 登录检查用户是否存在
	 * 
	 * @param name
	 * @param password
	 *            @ return 包含店铺对象
	 */
	User checkLogin(String username);

	List<User> query(UserQuery qu);

	Long queryTotal(UserQuery qu);

	/**
	 * 更新绑定店铺
	 * 
	 * @param userId
	 * @param storeId
	 * @param userType 
	 */
	void updateStore(@Param("userId")Long userId, @Param("storeId")Long storeId, @Param("userType")int userType);
	/**
	 * 更新用户头像
	 * @param storeId 店铺id 
	 * @param src
	 */
	void updateHeadImageByStore(@Param("storeId")Long storeId, @Param("headImage")String headImage);
}
