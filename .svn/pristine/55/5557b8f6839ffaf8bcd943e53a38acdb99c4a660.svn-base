package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.Customer;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.mapper.CustomerMapper;
import com.huashidai.weihuotong.query.CustomerQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.ICustomerService;
import com.huashidai.weihuotong.utils.MD5Util;
import com.huashidai.weihuotong.utils.StateCode;
import com.huashidai.weihuotong.utils.UserContext;

@Service
public class CustomerServiceImpl implements ICustomerService {
	@Autowired
	private CustomerMapper customerMapper;

	/**
	 * 保存账户
	 */
	@CacheEvict
	@Override
	public void save(Customer customer) {
		// 检查用户名
		Customer c = customerMapper.checkLogin(customer.getUsername());
		if (c != null) {
			throw new LogicException("账户名已存在!", StateCode.USERNAME_EXISTING);
		}
		// 加密密码
		customer.setPassword(MD5Util.MD5(customer.getPassword()));
		customerMapper.save(customer);
	}

	@CacheEvict
	@Override
	public void update(Customer customer) {
		customerMapper.update(customer);

	}

	@CacheEvict
	@Override
	public void delete(Long id) {
		customerMapper.delete(id);
	}

	@Cacheable
	@Override
	public Customer get(Long id) {
		return customerMapper.get(id);
	}

	@Cacheable
	@Override
	public List<Customer> getAll() {
		return customerMapper.getAll();
	}

	@Cacheable
	@Override
	public Customer findcheckLogin(String username, String password) {
		// 检查短信密码
		Customer cus = UserContext.getCustomerRandom();
		Customer customer = customerMapper.checkLogin(username);
		// 检查用户名
		if (customer == null) {
			if (cus != null && cus.getUsername().equals(username)
					&& cus.getPassword().equals(password)) {
				save(cus);
				UserContext.setCustomer(cus);
				return cus;
			} else {
				throw new LogicException("用户名或密码错误！！", StateCode.USERNAME_ERROR);
			}
		}
		// 加密密码
		password = MD5Util.MD5(password);
		// 检查密码
		if (!customer.getPassword().equals(password)
				&& (cus == null || !cus.getUsername().equals(username) || MD5Util
						.MD5(cus.getPassword()).equals(password))) {
			throw new LogicException("密码错误！！", StateCode.PASSWORD_ERROR);
		}
		UserContext.setCustomer(customer);
		return customer;

	}

	@Cacheable
	@Override
	public PageResult<Customer> query(CustomerQuery qu) {
		// 统计查询
		Long total = customerMapper.queryTotal(qu);
		// 分页查询
		List<Customer> rows = customerMapper.query(qu);
		return new PageResult<Customer>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}

}
