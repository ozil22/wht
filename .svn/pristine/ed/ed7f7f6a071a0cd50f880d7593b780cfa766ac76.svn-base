package com.huashidai.weihuotong.domain;

import java.io.Serializable;



/**
 * 城市
 * @author ozil
 *
 */
public class City implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8204180854002023757L;
	private Long id;
	private String name;//城市名
	private Province province;//所属省份（多对一）
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
	public Province getProvince() {
		return province;
	}
	public void setProvince(Province province) {
		this.province = province;
	}
	@Override
	public String toString() {
		return "City [id=" + id + ", name=" + name + ", province=" + province
				+ "]";
	}
}
