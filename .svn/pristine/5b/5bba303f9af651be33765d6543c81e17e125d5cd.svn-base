package com.huashidai.weihuotong.domain;

import java.io.Serializable;

/**
 * 商品详情图片
 * @author ozil
 *
 */
public class DetailsImage implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 277182927996601201L;
	private Long id;
	private String src;//图片路径
	private Integer sort = 99;//图片位置
	//关联商品
	private Goods goods;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	@Override
	public String toString() {
		return "DetailsImages [id=" + id + ", src=" + src + ", sort=" + sort
				+ ", goods=" + goods + "]";
	}
	public DetailsImage(String src, Goods goods) {
		this.src = src;
		this.goods = goods;
	}
	public DetailsImage() {
	}
	
}
