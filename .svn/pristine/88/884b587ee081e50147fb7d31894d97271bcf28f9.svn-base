package com.huashidai.weihuotong.domain;

import java.io.Serializable;

/**
 * 货品(商品的不同规格)
 * 
 * @author ozil
 *
 */
public class Product implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -7634879093657478046L;
	private Long id;
	private String name;//商品名
	private String specification;// 规格
	private Integer inventoryNum;// 库存
	private Long version = 0l;
	// 商品
	private Goods goods;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSpecification() {
		return specification;
	}

	public void setSpecification(String specification) {
		this.specification = specification;
	}

	public Integer getInventoryNum() {
		return inventoryNum;
	}

	public void setInventoryNum(Integer inventoryNum) {
		this.inventoryNum = inventoryNum;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.name = goods.getName();
		this.goods = goods;
	}

	public Long getVersion() {
		return version;
	}

	public void setVersion(Long version) {
		this.version = version;
	}
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", specification="
				+ specification + ", inventoryNum=" + inventoryNum
				+ ", version=" + version + ", goods=" + goods + "]";
	}
}
