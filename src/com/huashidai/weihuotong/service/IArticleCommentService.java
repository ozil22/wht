package com.huashidai.weihuotong.service;

import java.util.Map;

import com.huashidai.weihuotong.domain.ArticleComment;
import com.huashidai.weihuotong.query.ArticleCommentQuery;
import com.huashidai.weihuotong.query.PageResult;

public interface IArticleCommentService {
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<ArticleComment> query(ArticleCommentQuery qu);
	/**
	 * 高级查询
	 * @param qu
	 * @return 封装好的APP数据
	 */
	Map<String,Object> queryMap(ArticleCommentQuery qu);
	/**
	 * 评论文章
	 * @param articleComment
	 */
	void commentArticle(ArticleComment articleComment);
	/**
	 * 删除
	 * @param id
	 */
	void delete(Long id);
	/**
	 * 删除该文章所有评论
	 * @param id
	 */
	void deleteByArticle(Long id);
}
