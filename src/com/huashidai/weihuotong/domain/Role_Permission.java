package com.huashidai.weihuotong.domain;

import java.io.Serializable;


public class Role_Permission implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6789343919807183934L;
	private Role role;
	private Permission permission;

	//写构造函数,让初始化更加的简单
	public Role_Permission(){
		
	}
	
	public Role_Permission(Long rid,Long pid){
		role = new Role();
		role.setId(rid);
		permission = new Permission();
		permission.setId(pid);
	}
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Permission getPermission() {
		return permission;
	}

	public void setPermission(Permission permission) {
		this.permission = permission;
	}

}
