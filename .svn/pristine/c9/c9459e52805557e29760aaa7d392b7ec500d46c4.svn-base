package com.huashidai.weihuotong.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.Goods;
import com.huashidai.weihuotong.domain.Product;
import com.huashidai.weihuotong.mapper.ProductMapper;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.ProductQuery;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IGoodsService;
import com.huashidai.weihuotong.service.IProductService;

@Service
public class ProductServiceImpl implements IProductService {
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private IGoodsService goodsService;

	@CacheEvict
	@Override
	public void save(Product product) {
		productMapper.save(product);
	}

	@CacheEvict
	@Override
	public void update(Product product) {
		productMapper.update(product);
	}

	@CacheEvict
	@Override
	public void delete(Long id) {
		Product product = productMapper.get(id);
		Long goodsId = product.getGoods().getId();
		productMapper.delete(id);
		ProductQuery qu = new ProductQuery();
		qu.setGoodsId(goodsId);
		Long total = productMapper.queryTotal(qu);
		if (total == 0) {
			goodsService.delete(goodsId, "店铺删除");
		}
	}

	@Override
	public Product get(Long id) {
		return productMapper.get(id);
	}

	@Cacheable
	@Override
	public List<Product> getAll() {
		return productMapper.getAll();
	}

	@Cacheable
	@Override
	public List<Product> getByGoods(Long goodsId) {
		return productMapper.getByGoods(goodsId);
	}

	@Override
	public PageResult<Product> query(ProductQuery qu) {
		// 统计查询
		Long total = productMapper.queryTotal(qu);
		// 分页查询
		List<Product> rows = productMapper.query(qu);
		return new PageResult<Product>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}

	@Override
	public Map<String, Object> searchProduct(ProductQuery productQuery) {
		PageResult<Product> result = query(productQuery);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("total", result.getTotalPage());
		List<Product> rows = result.getRows();
		List<Object> list = new ArrayList<Object>();
		for (Product p : rows) {
			Goods goods = p.getGoods();
			Map<String, Object> product = new HashMap<String, Object>();
			product.put("goodsId", goods.getId());
			product.put("goodsName", goods.getName());
			product.put("saleNum", goods.getSaleNum());
			product.put("price", goods.getSalePrice());
			product.put("image", goods.getImage());

			product.put("id", p.getId());
			product.put("inventoryNum", p.getInventoryNum());
			product.put("specification", p.getSpecification());
			list.add(product);
		}
		map.put("products", list);
		return map;
	}

	@CacheEvict
	@Override
	public int updateNum(Product pro) {
		return productMapper.updateNum(pro);
	}

	@CacheEvict
	@Override
	public void deleteByGoods(Long goodsId) {
		productMapper.deleteByGoods(goodsId);
	}

}
