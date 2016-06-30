package com.huashidai.weihuotong.service;

import java.util.List;

import com.huashidai.weihuotong.domain.Customer;
import com.huashidai.weihuotong.query.CustomerQuery;
import com.huashidai.weihuotong.query.PageResult;

public interface ICustomerService {
	/**
	 * 保存账户
	 */
	void save(Customer emp);
	/**
	 * 删除账户
	 */
	void delete(Long id);
	/**
	 * 更新
	 * @param customer
	 */
	void update(Customer customer);
	/**
	 * 获取单个账户
	 */
	Customer get(Long id);
	/**
	 * 高级查询
	 */
	PageResult<Customer> query(CustomerQuery qu);
	/**
	 * 登录检查
	 * @param name
	 * @param password
	 * @return
	 */
	Customer findcheckLogin(String username, String password);
	/**
	 * 获取所有
	 * @return
	 */
	List<Customer> getAll();
}
