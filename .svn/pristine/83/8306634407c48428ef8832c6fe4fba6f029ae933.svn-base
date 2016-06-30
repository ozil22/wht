package com.huashidai.weihuotong.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.BannerImage;

public interface BannerImageMapper {
	/**
	 * 保存
	 */
	void save(BannerImage bannerImage);
	/**
	 * 更新
	 */
	void update(BannerImage bannerImage);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	BannerImage get(Long id);
	/**
	 * 查询所有
	 */
	List<BannerImage> getAll();
	/**
	 * 查询该商品所有图片
	 */
	List<BannerImage> getByGoods(@Param("goodsId")Long goodsId);
	/**
	 * 删除该商品所有图片
	 */
	void deleteByGoods(@Param("goodsId")Long goodsId);
}
