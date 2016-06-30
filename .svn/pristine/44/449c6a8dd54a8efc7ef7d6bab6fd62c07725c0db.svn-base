package com.huashidai.weihuotong.service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.Map;

import com.huashidai.weihuotong.domain.ProxyLog;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.ProxyLogQuery;

public interface IProxyLogService {
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<ProxyLog> query(ProxyLogQuery qu);
	/**
	 * 高级查询
	 * @param qu
	 * @return 封装好的APP数据
	 */
	Map<String,Object> queryMap(ProxyLogQuery qu);
	/**
	 * 添加代理记录
	 * @param time 时间
	 * @param proxyType 代理方式
	 * @param price 价格
	 * @param image 图片
	 * @param storeName 店铺名字
	 * @param details 简介
	 * @param goodsId 商品id
	 * @param userId 代理人
	 * @return
	 */
	ProxyLog createProxyLog(Date time, Integer proxyType, BigDecimal price,
			String image, String storeName, String details, Long goodsId,
			Long userId);
}
