package com.huashidai.weihuotong.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.MarginOrder;
import com.huashidai.weihuotong.query.MarginOrderQuery;

public interface MarginOrderMapper {
	/**
	 * 保存
	 */
	void save(MarginOrder marginOrder);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	MarginOrder get(Long id);
	/**
	 * 根据订单号获取
	 * @param orderNum
	 * @return
	 */
	MarginOrder getByOrderNum(@Param("orderNum")String orderNum);
	
	/**
	 * 查询总数
	 * @param qu
	 * @return
	 */
	Long queryTotal(MarginOrderQuery qu);
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	List<MarginOrder> query(MarginOrderQuery qu);
}
