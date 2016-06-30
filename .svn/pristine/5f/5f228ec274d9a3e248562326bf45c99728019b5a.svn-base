package com.huashidai.weihuotong.service;

import java.util.List;

import com.huashidai.weihuotong.domain.ArticleType;
import com.huashidai.weihuotong.query.BaseQuery;
import com.huashidai.weihuotong.query.PageResult;

public interface IArticleTypeService {
	/**
	 * APP获取所有分类
	 * @return
	 */
	List<Object> getAll();
	/**
	 * APP获取所有分类
	 * @return
	 */
	List<ArticleType> getAllArticleType();
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<ArticleType> query(BaseQuery qu);
	/**
	 * 删除
	 * @param id
	 */
	void delete(Long id);
	/**
	 * 保存
	 * @param articleType
	 */
	void save(ArticleType articleType);
}
