package com.huashidai.weihuotong.mapper;


import java.util.List;

import com.huashidai.weihuotong.domain.Customer;
import com.huashidai.weihuotong.query.CustomerQuery;

public interface CustomerMapper {
	/**
	 * 保存账户
	 */
	void save(Customer emp);
	/**
	 * 更新账户信息
	 */
	void update(Customer emp);
	/**
	 * 删除账户
	 */
	void delete(Long id);
	/**
	 * 获取单个账户
	 */
	Customer get(Long id);
	/**
	 * 查询所有账户
	 */
	List<Customer> getAll();
	/**
	 * 高级查询
	 */
	List<Customer> query(CustomerQuery equ);
	/**
	 * 高级查询
	 */
	Long queryTotal(CustomerQuery equ);
	/**
	 * 登录检查用户是否存在
	 * @param name
	 * @param password
	 */
	Customer checkLogin(String username);
	
}
