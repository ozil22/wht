package com.huashidai.weihuotong.domain;

import java.io.Serializable;

/**
 * 权限
 * @author ozil
 *
 */
public class Permission implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4253685360863702408L;
	private Long id;
	private String name;
	private String type;
	private String resource;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	

	

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getResource() {
		return resource;
	}

	public void setResource(String resource) {
		this.resource = resource;
	}

	@Override
	public String toString() {
		return id + ", " + name + ", " + type + ", " + resource;
	}

	public Permission(String name, String type, String resource) {
		this.name = name;
		this.type = type;
		this.resource = resource;
	}
	public Permission( String resource) {
		this.resource = resource;
	}
	public Permission() {
	}
	
}
