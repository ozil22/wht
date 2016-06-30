package com.huashidai.weihuotong.query;

public class ArticleQuery extends BaseQuery {
	/**
	 * 商家id
	 */
	private Long storeId = -1L;
	private Long articleTypeId = -1L;
	private Integer sort = 1;// 1时间降序,2回复数降序

	public Long getStoreId() {
		return storeId;
	}

	public void setStoreId(Long storeId) {
		this.storeId = storeId;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public Long getArticleTypeId() {
		return articleTypeId;
	}

	public void setArticleTypeId(Long articleTypeId) {
		this.articleTypeId = articleTypeId;
	}

	@Override
	public String toString() {
		return super.toString() + storeId + "," + articleTypeId + ", " + sort;
	}
}
