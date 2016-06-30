package com.huashidai.weihuotong.query;

public class ProductQuery extends BaseQuery {
	private Integer state = -99;// 状态 0下架,1销售中,2已售罄
	private Long storeId = -1l;// 店铺id
	private Long goodsId = -1l;// 商品id

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Long getStoreId() {
		return storeId;
	}

	public void setStoreId(Long storeId) {
		this.storeId = storeId;
	}

	public Long getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(Long goodsId) {
		this.goodsId = goodsId;
	}

	@Override
	public String toString() {
		return super.toString() + state + ", " + storeId + ", " + goodsId;
	}
	

}
