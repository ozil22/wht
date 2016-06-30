package com.huashidai.weihuotong.service;

import java.io.IOException;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.Article;
import com.huashidai.weihuotong.query.ArticleQuery;
import com.huashidai.weihuotong.query.PageResult;

public interface IArticleService {
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<Article> query(ArticleQuery qu);
	/**
	 * 高级查询
	 * @param qu
	 * @return 封装好的APP数据
	 */
	Map<String,Object> queryMap(ArticleQuery qu);
	/**
	 * 发布文章
	 * @param article
	 */
	void addArticle(MultipartFile[] image,Article article) throws IOException;
	/**
	 * 删除文章
	 * @param articleId
	 * @param storeId 
	 */
	void removeArticle(Long articleId, Long storeId);
	/**
	 * 查看文章
	 * @param articleId
	 * @return
	 */
	Map<String, Object> enterArticle(Long articleId);
	/**
	 * 删除文章
	 * @param id
	 */
	void delete(Long id);
	/**
	 * 获取文章
	 * @param id
	 */
	Article get(Long id);
	/**
	 * 增加评论数
	 * @param i
	 * @param id
	 */
	void addCommentNum(int i, Long id);
	/**
	 * 查询总数
	 * @param qu
	 * @return
	 */
	Long queryTotal(ArticleQuery qu);
}
