package com.huashidai.weihuotong.domain;

import java.io.Serializable;



/**
 * 省份
 * @author ozil
 *
 */
public class Province implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 542896336906435102L;
	private Long id;
	private String name;//省份名
	private String carorg;//省份拼音
	private String lsp;//省份缩写
	public String getCarorg() {
		return carorg;
	}
	public void setCarorg(String carorg) {
		this.carorg = carorg;
	}
	public String getLsp() {
		return lsp;
	}
	public void setLsp(String lsp) {
		this.lsp = lsp;
	}
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
	@Override
	public String toString() {
		return "Province [id=" + id + ", name=" + name + ", carorg=" + carorg
				+ ", lsp=" + lsp + "]";
	}
}
