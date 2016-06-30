package com.huashidai.weihuotong.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.ArticleImage;

public interface ArticleImageMapper {
	/**
	 * 保存
	 */
	void save(ArticleImage articleImage);
	/**
	 * 更新
	 */
	void update(ArticleImage articleImage);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	ArticleImage get(Long id);
	/**
	 * 查询该商品所有图片
	 */
	List<ArticleImage> getByArticle(@Param("articleId")Long articleId);
	/**
	 * 删除该商品所有图片
	 */
	void deleteByArticle(@Param("articleId")Long articleId);
}
