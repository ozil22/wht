package com.huashidai.weihuotong.service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import com.huashidai.weihuotong.domain.PostageTemplate;
import com.huashidai.weihuotong.domain.paramList.PostItemList;
import com.huashidai.weihuotong.domain.paramList.PostageTemplateList;


public interface IPostageTemplateService {
	
	/**
	 * 获取店铺所有运费模板
	 */
	List<Map<String, Object>> getByStore(Long storeId);
	/**
	 * 删除店铺所有运费模板
	 */
	void deleteByStore(Long storeId);
	/**
	 * 获取单个运费模板
	 * @param postageTemplateId
	 * @return
	 */
	Map<String, Object> get(Long postageTemplateId);
	/**
	 * 添加运费模板
	 * @param postageTemplate
	 */
	void save(PostageTemplate postageTemplate);
	/**
	 * 批量添加运费模板
	 * @param templates
	 */
	void saveAll(PostageTemplateList templates);
	/**
	 * 修改
	 * @param postageTemplate
	 */
	void update(PostageTemplate postageTemplate);
	/**
	 * 计算多个订单邮费（app）
	 * @param addressId
	 * @param postItemList
	 * @return
	 */
	List<Object> postages(Long addressId, PostItemList postItemList);
	/**
	 * 计算单个订单邮费
	 * @param addressId
	 * @param postItemList
	 * @return
	 */
	BigDecimal postage(String province, Long storeId,Integer num);
	
	
	
}
