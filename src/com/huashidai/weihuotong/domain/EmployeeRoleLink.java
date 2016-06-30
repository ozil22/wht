package com.huashidai.weihuotong.domain;

import java.io.Serializable;

/**
 * 角色与用户的关联对象
 * @author ozil
 *
 */
public class EmployeeRoleLink implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5637708216542607174L;
	private Long employee_id;
	private Long role_id;
	public Long getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(Long employee_id) {
		this.employee_id = employee_id;
	}
	public Long getRole_id() {
		return role_id;
	}
	public void setRole_id(Long role_id) {
		this.role_id = role_id;
	}
	@Override
	public String toString() {
		return "EmployeeRoleLink [employee_id=" + employee_id + ", role_id="
				+ role_id + "]";
	}
	public EmployeeRoleLink(Long employee_id, Long role_id) {
		this.employee_id = employee_id;
		this.role_id = role_id;
	}
	public EmployeeRoleLink() {
	}
	
}
