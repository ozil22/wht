package com.huashidai.weihuotong.domain;

import java.io.Serializable;

public class Type implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 3330202906055990246L;
	private Long id;
	private String name;//分类名
	private String pinYin;//拼音首字母
	private String image;//分类图片地址
	private Type parent;//上级分类
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Type getParent() {
		return parent;
	}
	public void setParent(Type parent) {
		this.parent = parent;
	}
	
	public String getPinYin() {
		return pinYin;
	}
	public void setPinYin(String pinYin) {
		this.pinYin = pinYin;
	}
	@Override
	public String toString() {
		return "Type [id=" + id + ", name=" + name + ", pinYin=" + pinYin
				+ ", image=" + image + ", parent=" + parent + "]";
	}
}
