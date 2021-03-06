package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.AdPositionId;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.mapper.AdPositionIdMapper;
import com.huashidai.weihuotong.query.AdPositionIdQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.PromotionQuery;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IAdPositionIdService;
import com.huashidai.weihuotong.service.IPromotionService;
import com.huashidai.weihuotong.utils.ConstUtil;
import com.huashidai.weihuotong.utils.StateCode;

@Service
public class AdPositionIdServiceImpl implements IAdPositionIdService {
	@Autowired
	private AdPositionIdMapper adPositionIdMapper;
	@Autowired
	private IPromotionService promotionService;

	@CacheEvict
	@Override
	public void save(AdPositionId ad) {
		if (ad.getType() == ConstUtil.ADTYPE_THIN) {
			adPositionIdMapper.save(ad);
		}
		ad.setId(null);
		adPositionIdMapper.save(ad);
	}

	@CacheEvict
	@Override
	public void update(AdPositionId ad) {
		adPositionIdMapper.update(ad);
	}

	@CacheEvict
	@Override
	public void delete(Long id) {
		PromotionQuery qu = new PromotionQuery(null, null, id,
				ConstUtil.PROMOTION_NORMAL, ConstUtil.PROMOTION_NOT_OVERDUE);
		Long queryTotal = promotionService.queryTotal(qu);
		if (queryTotal > 0) {
			throw new LogicException("该广告位还有未失效的广告,不能删除!",
					StateCode.ADPOSITIONID_NOTDELETE);
		}
		adPositionIdMapper.delete(id);
	}

	@Cacheable
	@Override
	public AdPositionId get(Long id) {
		return adPositionIdMapper.get(id);
	}

	@Cacheable
	@Override
	public List<AdPositionId> getAll() {
		return adPositionIdMapper.getAll();
	}

	@Cacheable(expire=60*60)
	@Override
	public PageResult<AdPositionId> query(AdPositionIdQuery qu) {
		// 统计查询
		Long total = adPositionIdMapper.queryTotal(qu);
		// 分页查询
		List<AdPositionId> rows = adPositionIdMapper.query(qu);
		return new PageResult<AdPositionId>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}
}
