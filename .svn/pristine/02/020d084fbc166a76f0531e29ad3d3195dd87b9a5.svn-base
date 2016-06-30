package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.Recommendation;
import com.huashidai.weihuotong.query.BaseQuery;

public interface RecommendationMapper {
	void save(Recommendation recommendation);

	Recommendation get(Long id);

	void delete(Long id);
	
	/**
	 * 高级查询
	 */
	List<Recommendation> query(BaseQuery qu);
	/**
	 * 查询总数
	 */
	Long queryTotal(BaseQuery qu);
	
} 
