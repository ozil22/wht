package com.huashidai.weihuotong.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.PromotionOrder;
import com.huashidai.weihuotong.query.PromotionOrderQuery;

public interface PromotionOrderMapper {
	/**
	 * 保存
	 */
	void save(PromotionOrder promotionOrder);
	/**
	 * 修改状态
	 */
	void updateState(PromotionOrder promotionOrder);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	PromotionOrder get(Long id);
	/**
	 * 根据订单号获取
	 * @param orderNum
	 * @return
	 */
	PromotionOrder getByOrderNum(@Param("orderNum")String orderNum);
	/**
	 * 查询总数
	 * @param qu
	 * @return
	 */
	Long queryTotal(PromotionOrderQuery qu);
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	List<PromotionOrder> query(PromotionOrderQuery qu);
}
