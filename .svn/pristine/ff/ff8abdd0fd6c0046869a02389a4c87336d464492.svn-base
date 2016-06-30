package com.huashidai.weihuotong.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.DetailsImage;

public interface DetailsImageMapper {
	/**
	 * 保存
	 */
	void save(DetailsImage detailsImage);
	/**
	 * 更新
	 */
	void update(DetailsImage detailsImage);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	DetailsImage get(Long id);
	/**
	 * 查询所有
	 */
	List<DetailsImage> getAll();
	/**
	 * 查询该商品所有详情图片
	 */
	List<DetailsImage> getByGoods(@Param("goodsId")Long goodsId);
	/**
	 * 删除该商品所有详情图片
	 */
	void deleteByGoods(@Param("goodsId")Long goodsId);
}
