package com.huashidai.weihuotong.service;

import com.huashidai.weihuotong.domain.Recommendation;
import com.huashidai.weihuotong.query.BaseQuery;
import com.huashidai.weihuotong.query.PageResult;

public interface IRecommendationService {
	
	void save(Recommendation recommendation);
	Recommendation get(Long id);
	
	
	PageResult<Recommendation> query(BaseQuery q);
	
}
