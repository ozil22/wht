package com.huashidai.weihuotong.service;

import java.util.List;
import java.util.Map;

import com.huashidai.weihuotong.domain.Product;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.ProductQuery;

public interface IProductService {
	/**
	 * 保存
	 */
	void save(Product product);
	/**
	 * 更新
	 */
	void update(Product product);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	Product get(Long id);
	/**
	 * 查询所有
	 */
	List<Product> getAll();
	/**
	 * 查询该商品的所有不同规格的货品
	 */
	List<Product> getByGoods(Long goodsId);
	/**
	 * 商品高级查询
	 * @param qu
	 * @return
	 */
	PageResult<Product> query(ProductQuery qu);
	/**
	 * @param productQuery
	 * @return APP数据
	 */
	Map<String, Object> searchProduct(ProductQuery productQuery);
	/**
	 * 更新库存
	 * @param pro
	 * @return
	 */
	int updateNum(Product pro);
	/**
	 * 删除该商品对应的所有货品
	 * @param id
	 */
	void deleteByGoods(Long goodsId);
}
