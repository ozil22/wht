package com.huashidai.weihuotong.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.Promotion;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.PromotionQuery;

public interface IPromotionService {
	
	/**
	 * 保存
	 * @param promotion
	 */
	void save(Promotion promotion);
	/**
	 * 查询总数
	 * @param qu
	 * @return
	 */
	Long queryTotal(PromotionQuery qu);
	/**
	 * 获取该广告位所有正常状态广告
	 * @param adPositionId
	 * @return
	 */
	List<Promotion> getByAd(Long adPositionId);
	
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<Promotion> query(PromotionQuery qu);
	/**
	 * 获取banner图广告
	 * @return
	 */
	List<Object> getBanner(Long goodsTypeId);
	
	/**
	 * 获取对应商品类型的广告(非banner图)
	 * @param type 商品类型
	 * @param size 每页数量
	 * @param page 第几页
	 * @return
	 */
	List<Map<String, Object>> getByGoodsType(Long goodsTypeId,int size,int page);
	/**
	 * 获取商品类型和对应的广告
	 * @param size 每页数量
	 * @param page 第几页的商品类型
	 * @return
	 */
	List<Map<String, Object>> getTypeAndAd(int size,int page);
	/**
	 * 获取当前页的广告和banner图(APP首页)
	 * @param page 当超过一页时返回空
	 * @return
	 */
	Map<String,Object> getPromotion(int page);
	/**
	 * 获取当前页的广告和banner图(不同分类首页)
	 * @param page 当超过一页时返回空
	 * @param goodsTypeId 分类id
	 * @return
	 */
	Map<String,Object> getPromotionOfType(Long goodsTypeId, int page);
	
	
	/**
	 * 点击进入广告
	 * @param promotionId 广告id
	 * @return
	 */
	Map<String, Object> enterPromotion(Long promotionId,Long storeId);
	/**
	 * 获取广告内容
	 * @param promotionId 广告id
	 * @return
	 */
	String getContent(Long promotionId);
	/**
	 * 更新状态
	 * @param id
	 * @param state
	 */
	void updateState(Long id, Integer state);
	/**
	 * 查询广告
	 */
	Map<String, Object> queryMap(PromotionQuery qu);
	/**
	 * 更新广告
	 * @param promotionId
	 * @param contentType
	 * @param contentId
	 * @param image
	 * @throws IOException 
	 */
	void update(Long promotionId, Integer contentType, Long contentId,
			MultipartFile image) throws IOException;
	/**
	 * 下架
	 * @param id
	 * @param promotionFailure
	 */
	void failure(Long id, String remark );
	/**
	 * 删除
	 * @param id
	 */
	void delete(Long id, String remark);
}
