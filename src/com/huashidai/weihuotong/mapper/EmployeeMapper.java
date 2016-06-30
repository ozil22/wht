package com.huashidai.weihuotong.mapper;


import java.util.List;

import com.huashidai.weihuotong.domain.Employee;
import com.huashidai.weihuotong.domain.EmployeeRoleLink;
import com.huashidai.weihuotong.query.EmployeeQuery;

public interface EmployeeMapper {
	/**
	 * 保存账户
	 */
	void save(Employee emp);
	/**
	 * 更新账户信息
	 */
	void update(Employee emp);
	/**
	 * 删除账户
	 */
	void delete(Long id);
	/**
	 * 获取单个账户
	 */
	Employee get(Long id);
	/**
	 * 查询所有账户
	 */
	List<Employee> getAll();
	/**
	 * 高级查询
	 */
	List<Employee> query(EmployeeQuery equ);
	/**
	 * 高级查询
	 */
	Long queryTotal(EmployeeQuery equ);
	/**
	 * 登录检查用户是否存在
	 * @param name
	 * @param password
	 */
	List<Employee> checkLogin(String username);
	/**
	 * 保存中间表数据
	 * @param list
	 */
	void saveEmployeeRoleLink(List<EmployeeRoleLink> list);
	/**
	 * 删除中间表数据
	 * @param empId
	 */
	void deleteEmployeeRoleLink(Long empId);
	
	List<Employee> findByHql(Employee employee);
	
}
