package com.huashidai.weihuotong.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.ArticleComment;
import com.huashidai.weihuotong.query.ArticleCommentQuery;

public interface ArticleCommentMapper {

    void save(ArticleComment articleComment);
    
    void delete(Long id);
    
    void deleteByArticle(@Param("articleId")Long articleId);
    /**
   	 * 高级查询
   	 * @param qu
   	 * @return
   	 */
   	List<ArticleComment> query(ArticleCommentQuery qu);
   	/**
   	 * 统计查询
   	 * @param qu
   	 * @return
   	 */
   	Long queryTotal(ArticleCommentQuery qu);

}