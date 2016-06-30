package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 广告位
 * @author ozil
 *
 */
public class AdPositionId implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7398592877067929557L;
	private Long id;
	private Integer type;//广告位类型   0非banner,1 banner广告位,2宽广告位,3二分之一宽度广告位
	private Type goodsType;//对应商品类型     首页banner为0
	private BigDecimal dayPrice;//一天的价格
	
	
	
	public AdPositionId() {
	}
	public AdPositionId(Long id) {
		this.id = id;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Type getGoodsType() {
		return goodsType;
	}
	public void setGoodsType(Type goodsType) {
		this.goodsType = goodsType;
	}
	public BigDecimal getDayPrice() {
		return dayPrice;
	}
	public void setDayPrice(BigDecimal dayPrice) {
		this.dayPrice = dayPrice;
	}
	@Override
	public String toString() {
		return "AdPositionId [id=" + id + ", type=" + type + ", goodsType="
				+ goodsType + ", dayPrice=" + dayPrice + "]";
	}
}