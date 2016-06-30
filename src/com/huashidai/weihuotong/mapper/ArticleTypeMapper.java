package com.huashidai.weihuotong.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.ArticleType;
import com.huashidai.weihuotong.query.BaseQuery;

public interface ArticleTypeMapper {

	void save(ArticleType articleType);

	void delete(Long id);

	List<ArticleType> getAll();

	/**
	 * 高级查询
	 * 
	 * @param qu
	 * @return
	 */
	List<ArticleType> query(BaseQuery qu);

	/**
	 * 统计查询
	 * 
	 * @param qu
	 * @return
	 */
	Long queryTotal(BaseQuery qu);
	/**
	 * 根据名字查询
	 * @param name
	 * @return
	 */
	ArticleType getByName(@Param("name")String name);

}