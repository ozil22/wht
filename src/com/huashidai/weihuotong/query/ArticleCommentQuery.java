package com.huashidai.weihuotong.query;

public class ArticleCommentQuery extends BaseQuery {
	/**
	 * 文章id
	 */
	private Long articleId = -1L;

	public Long getArticleId() {
		return articleId;
	}

	public void setArticleId(Long articleId) {
		this.articleId = articleId;
	}

	@Override
	public String toString() {
		return super.toString() + articleId;
	}
}
