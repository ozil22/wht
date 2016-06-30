package com.huashidai.weihuotong.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.Address;

public interface AddressMapper {
	/**
	 * 添加
	 */
	void save(Address address);
	/**
	 * 更新
	 */
	void update(Address address);
	/**
	 * 修改默认
	 */
	void updateDefault(Address address);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个(包含城市)
	 */
	Address get(Long id);
	/**
	 * 获取单个(包含用户)
	 */
	Address getWithUser(Long id);
	/**
	 * 获取单个(包含客户)
	 */
	Address getWithCustomer(Long id);
	/**
	 * 根据订单获取单个
	 */
	Address getByOrder(@Param("orderId")Long orderId);
	/**
	 * 查询该用户所有地址
	 */
	List<Address> getByUser(@Param("userId")Long userId);
	/**
	 * 查询该用户默认地址
	 */
	Address getUserDefault(@Param("userId")Long userId);
	/**
	 * 查询该客户所有地址
	 */
	List<Address> getByCustomer(@Param("customerId")Long customerId);
	/**
	 * 查询该客户默认地址
	 */
	Address getCustomerDefault(@Param("customerId")Long customerId);
}
