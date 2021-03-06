package com.huashidai.weihuotong.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.ArticleType;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.mapper.ArticleTypeMapper;
import com.huashidai.weihuotong.query.ArticleQuery;
import com.huashidai.weihuotong.query.BaseQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.redis.Cacheable.KeyMode;
import com.huashidai.weihuotong.service.IArticleService;
import com.huashidai.weihuotong.service.IArticleTypeService;
import com.huashidai.weihuotong.utils.StateCode;

@Service
public class ArticleTypeServiceImpl implements IArticleTypeService {
	@Autowired
	private ArticleTypeMapper articleTypeMapper;
	@Autowired
	private IArticleService articleService;

	@Cacheable
	@Override
	public List<Object> getAll() {
		ArrayList<Object> list = new ArrayList<Object>();
		List<ArticleType> all = getAllArticleType();
		for (ArticleType articleType : all) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("id", articleType.getId());
			map.put("name", articleType.getName());
			list.add(map);
		}
		return list;
	}
	@Cacheable
	@Override
	public List<ArticleType> getAllArticleType() {
		return articleTypeMapper.getAll();
	}
	
	@Cacheable(keyMode=KeyMode.ALL)
	@Override
	public PageResult<ArticleType> query(BaseQuery qu) {
		// 统计查询
		Long total = articleTypeMapper.queryTotal(qu);
		// 分页查询
		List<ArticleType> rows = articleTypeMapper.query(qu);
		return new PageResult<ArticleType>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}
	@CacheEvict
	@Override
	public void delete(Long id) {
		ArticleQuery qu = new ArticleQuery();
		qu.setArticleTypeId(id);
		Long total = articleService.queryTotal(qu);
		if (total != null && total > 0) {
			throw new LogicException("该分类还有存在文章，不能删除！", StateCode.ARTICLETYPE_NOTDELETE);
		}
		articleTypeMapper.delete(id);
	}
	@CacheEvict
	@Override
	public void save(ArticleType articleType) {
		ArticleType a = articleTypeMapper.getByName(articleType.getName());
		if (a != null) {
			throw new LogicException("该分类还已存在！", StateCode.ARTICLETYPE_EXIST);
		}
		articleTypeMapper.save(articleType);
	}

}
