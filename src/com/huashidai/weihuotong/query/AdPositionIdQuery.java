package com.huashidai.weihuotong.query;


public class AdPositionIdQuery extends BaseQuery {
	/**
	 * 广告类型
	 */
	private Integer type = -99;
	/**
	 * 商品类型id
	 * 查询首页就是0
	 */
	private Long goodsTypeId = -1L;
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Long getGoodsTypeId() {
		return goodsTypeId;
	}
	public void setGoodsTypeId(Long goodsTypeId) {
		this.goodsTypeId = goodsTypeId;
	}
	public AdPositionIdQuery(Integer type, Long goodsTypeId, Integer pageSize, Integer currentPage) {
		super(pageSize, currentPage);
		this.type = type;
		this.goodsTypeId = goodsTypeId;
	}
	public AdPositionIdQuery() {
	}
	@Override
	public String toString() {
		return super.toString() + type + "," + goodsTypeId;
	}
	
	
}
