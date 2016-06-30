package com.huashidai.weihuotong.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.Article;
import com.huashidai.weihuotong.query.ArticleQuery;

public interface ArticleMapper {

    void save(Article article);
    
    void delete(Long id);
    
    void deleteByArticleType(@Param("articleTypeId")Long articleTypeId);
    
    Article get(Long id);
    
    Article getByStore(@Param("storeId")Long storeId);
    
    /**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	List<Article> query(ArticleQuery qu);
	/**
	 * 统计查询
	 * @param qu
	 * @return
	 */
	Long queryTotal(ArticleQuery qu);
	
	/**
	 * 增加评论量
	 * @param saleNum
	 */
	void addCommentNum(@Param("commentNum")Integer commentNum,@Param("id")Long id);
    
}