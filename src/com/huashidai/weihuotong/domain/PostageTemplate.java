package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 运费模板
 * 
 * @author Administrator
 */
public class PostageTemplate implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 9044769297527788517L;
	private Long id;
	private String name;// 模板名称
	private BigDecimal one;// 价格
	private Integer oneNum;//数量
	private BigDecimal other;// 续件价格
	private Integer otherNum;// 续件数量
	private String area;// 配送地区(省份,逗号分隔,默认为空字符串)
	private Store store;// 所属店铺
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
	public BigDecimal getOne() {
		return one;
	}
	public void setOne(BigDecimal one) {
		this.one = one;
	}
	public Integer getOneNum() {
		return oneNum;
	}
	public void setOneNum(Integer oneNum) {
		this.oneNum = oneNum;
	}
	public BigDecimal getOther() {
		return other;
	}
	public void setOther(BigDecimal other) {
		this.other = other;
	}
	public Integer getOtherNum() {
		return otherNum;
	}
	public void setOtherNum(Integer otherNum) {
		this.otherNum = otherNum;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public Store getStore() {
		return store;
	}
	public void setStore(Store store) {
		this.store = store;
	}
}
