package com.huashidai.weihuotong.service.impl;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.BannerImage;
import com.huashidai.weihuotong.domain.Brand;
import com.huashidai.weihuotong.domain.DetailsImage;
import com.huashidai.weihuotong.domain.Goods;
import com.huashidai.weihuotong.domain.Product;
import com.huashidai.weihuotong.domain.ProxyGoods;
import com.huashidai.weihuotong.domain.Store;
import com.huashidai.weihuotong.domain.Type;
import com.huashidai.weihuotong.domain.User;
import com.huashidai.weihuotong.domain.paramList.ProductList;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.mapper.BannerImageMapper;
import com.huashidai.weihuotong.mapper.DetailsImageMapper;
import com.huashidai.weihuotong.mapper.GoodsMapper;
import com.huashidai.weihuotong.query.GoodsQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IGoodsService;
import com.huashidai.weihuotong.service.IMessageService;
import com.huashidai.weihuotong.service.IProductService;
import com.huashidai.weihuotong.service.IProxyGoodsService;
import com.huashidai.weihuotong.service.IProxyLogService;
import com.huashidai.weihuotong.service.IStoreService;
import com.huashidai.weihuotong.service.IUserService;
import com.huashidai.weihuotong.utils.ConstUtil;
import com.huashidai.weihuotong.utils.DateUtil;
import com.huashidai.weihuotong.utils.FileUtil;
import com.huashidai.weihuotong.utils.StateCode;

@Service
public class GoodsServiceImpl implements IGoodsService {
	@Autowired
	private GoodsMapper goodsMapper;
	@Autowired
	private IProductService productService;
	@Autowired
	private IProxyGoodsService proxyGoodsService;
	@Autowired
	private BannerImageMapper bannerImageMapper;
	@Autowired
	private DetailsImageMapper detailsImageMapper;
	@Autowired
	private IProxyLogService proxyLogService;
	@Autowired
	private IStoreService storeService;
	@Autowired
	private IUserService userService;
	@Autowired
	private IMessageService messageService;

	@Cacheable
	@Override
	public PageResult<Goods> query(GoodsQuery qu) {
		// 统计查询
		Long total = goodsMapper.queryTotal(qu);
		// 分页查询
		List<Goods> rows = goodsMapper.query(qu);
		return new PageResult<Goods>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}

	@Cacheable
	@Override
	public Map<String, Object> enterGoods(Long goodsId) {
		Map<String, Object> map = new HashMap<String, Object>();
		Goods goods = goodsMapper.getMap(goodsId);
		if (goods == null) {
			throw new LogicException("商品已下架！！", StateCode.GOODS_NOTFOUND);
		}
		map.put("goodsId", goods.getId());
		map.put("goodsName", goods.getName());
		map.put("bannerImages", goods.getBannerImages());
		map.put("details", goods.getDetails());
		map.put("proxyNum", goods.getProxyNum());
		map.put("saleNum", goods.getSaleNum());
		map.put("salePrice", goods.getSalePrice());
		map.put("postage", goods.getPostage());
		map.put("image", goods.getImage());

		Store store = goods.getStore();
		map.put("storeId", store.getId());
		map.put("storeName", store.getName());
		map.put("storeImage", store.getHeadImage());
		map.put("storePhone", store.getPhone());
		map.put("secured", store.getSecured());
		map.put("margin", store.getMargin());
		return map;
	}

	@CacheEvict
	@Override
	public Map<String, Object> proxyGoods(Long goodsId, BigDecimal price,
			String details, Long userId, Integer proxyType) {
		ProxyGoods proxyGoods = new ProxyGoods();
		proxyGoods.setPrice(price);
		Goods goods = goodsMapper.getMap(goodsId);
		if (StringUtils.isBlank(details)) {
			details = goods.getDetails();
		}
		proxyGoods.setDetails(details);
		proxyGoods.setGoods(goods);
		proxyGoods.setUser(new User(userId));
		// 保存代理商品对象
		proxyGoodsService.save(proxyGoods);
		// 修改商品转发量
		goodsMapper.addProxyNum(1, goodsId);
		// 保存代理记录
		proxyLogService.createProxyLog(new Date(), proxyType, price,
				goods.getImage(), goods.getStore().getName(), details, goodsId,
				userId);
		// 返回app需要的数据
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("proxyGoodsId", proxyGoods.getId());
		map.put("image", goods.getImage());
		map.put("details", details);
		return map;
	}

	@Override
	public List<Object> toBuyProduct(Long goodsId) {
		List<Object> products = new ArrayList<Object>();
		List<Product> pros = productService.getByGoods(goodsId);
		for (Product pro : pros) {
			Map<String, Object> product = new HashMap<String, Object>();
			product.put("productId", pro.getId());
			product.put("specification", pro.getSpecification());
			product.put("inventoryNum", pro.getInventoryNum());
			products.add(product);
		}
		return products;
	}

	@Cacheable
	@Override
	public Map<String, Object> newGoods(GoodsQuery goodsQuery) {
		goodsQuery.setUptime(DateUtil.getLastWeek(new Date()));
		return searchGoods(goodsQuery);
	}

	@Cacheable
	@Override
	public Map<String, Object> hotGoods(GoodsQuery goodsQuery) {
		goodsQuery.setSaleNum(100);
		return searchGoods(goodsQuery);
	}

	@CacheEvict
	@Override
	public void delete(Long id, String remark) {
		Goods goods = goodsMapper.getMap(id);
		if (goods.getState() != ConstUtil.GOODS_LEAVE) {
			throw new LogicException("商品未下架,不能删除!", StateCode.GOODS_NOTDELETE);
		}
		// 删除关联的图片
		deleteGoodsImage(id);
		// 删除不同规格
		productService.deleteByGoods(id);
		// 删除商品
		goodsMapper.delete(id);
		// 生成店铺消息
		messageService.createMessage(goods.getStore().getId(),
				"商品【" + goods.getName() + "】已删除", remark);

	}

	@CacheEvict
	@Override
	public void leave(Long id, String remark) {
		Goods goods = goodsMapper.getMap(id);
		goods.setState(ConstUtil.GOODS_LEAVE);
		goodsMapper.updateState(goods);

		// 生成店铺消息
		messageService.createMessage(goods.getStore().getId(),
				"商品【" + goods.getName() + "】已下架", remark);
	}

	@CacheEvict
	@Override
	public void up(Long id) {
		Goods goods = goodsMapper.get(id);
		goods.setState(ConstUtil.GOODS_NORMAL);
		goodsMapper.updateState(goods);
	}

	@CacheEvict
	@Override
	public void addGoods(MultipartFile[] bannerImage,
			MultipartFile[] detailsImage, ProductList products, Goods goods)
			throws IOException {
		// 保存商品
		goods.setTime(new Date());
		// 判断是修改还是新增
		Long id = goods.getId();
		if (id != null && id != -1L) {
			System.out.println("修改");
			// 清除图片
			deleteGoodsImage(id);
			// 清除对应货品
			productService.deleteByGoods(id);
		} else {
			System.out.println("添加");
			goodsMapper.save(goods);
		}
		// 保存图片
		for (int i = 0; i < bannerImage.length; i++) {
			String src = FileUtil.saveImage(bannerImage[i], "bannerImage");
			if (i == 0) {
				goods.setImage(src);
			}
			BannerImage image = new BannerImage(src, goods);
			bannerImageMapper.save(image);
		}
		for (MultipartFile details : detailsImage) {
			String src = FileUtil.saveImage(details, "detailsImage");
			DetailsImage image = new DetailsImage(src, goods);
			detailsImageMapper.save(image);
		}
		// 保存货品并计算库存
		int inventoryNum = 0;
		for (Product product : products.getProducts()) {
			product.setGoods(goods);
			productService.save(product);
			inventoryNum += product.getInventoryNum();
		}
		// 设置商品库存
		goods.setInventoryNum(inventoryNum);
		// 更新商品
		goodsMapper.update(goods);
	}

	@Cacheable
	@Override
	public Map<String, Object> searchGoods(GoodsQuery qu) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Object> goods = new ArrayList<Object>();
		PageResult<Goods> result = query(qu);
		map.put("total", result.getTotalPage());
		for (Goods g : result.getRows()) {
			Map<String, Object> m = new HashMap<String, Object>();
			m.put("id", g.getId());
			m.put("name", g.getName());
			m.put("salePrice", g.getSalePrice());
			m.put("saleNum", g.getSaleNum());
			m.put("image", g.getImage());
			m.put("inventoryNum", g.getInventoryNum());
			goods.add(m);
		}
		map.put("goods", goods);
		return map;
	}

	@Override
	public Map<String, Object> toEditGoods(Long goodsId) {
		Map<String, Object> map = new HashMap<String, Object>();
		Goods goods = goodsMapper.getMap(goodsId);
		map.put("goodsId", goods.getId());
		map.put("goodsName", goods.getName());
		map.put("bannerImages", goods.getBannerImages());
		map.put("detailsImages", goods.getDetailsImages());
		map.put("details", goods.getDetails());
		map.put("salePrice", goods.getSalePrice());
		map.put("postage", goods.getPostage());
		Brand brand = goods.getBrand();
		if (brand != null) {
			map.put("brandId", brand.getId());
			map.put("brandName", brand.getName());
		}
		Type type = goods.getType();
		if (type != null) {
			map.put("typeId", type.getId());
			map.put("typeName", type.getName());
		}
		List<Product> products = productService.getByGoods(goodsId);
		ArrayList<Object> list = new ArrayList<Object>();
		for (Product product : products) {
			Map<String, Object> pro = new HashMap<String, Object>();
			pro.put("productId", product.getId());
			pro.put("specification", product.getSpecification());
			pro.put("inventoryNum", product.getInventoryNum());
			list.add(pro);
		}
		map.put("products", list);
		return map;
	}

	@Cacheable
	@Override
	public Long queryTotal(GoodsQuery qu) {
		return goodsMapper.queryTotal(qu);
	}

	@CacheEvict
	@Override
	public int updateNum(Goods goods) {
		return goodsMapper.updateNum(goods);
	}

	@CacheEvict
	@Override
	public void addSaleNum(Integer num, Long id) {
		goodsMapper.addSaleNum(num, id);

	}

	/**
	 * 删除商品所有图片
	 * 
	 * @param id
	 */
	private void deleteGoodsImage(Long id) {
		List<BannerImage> banners = bannerImageMapper.getByGoods(id);
		for (BannerImage bannerImage : banners) {
			FileUtil.deleteFile(bannerImage.getSrc());
		}
		List<DetailsImage> details = detailsImageMapper.getByGoods(id);
		for (DetailsImage detailsImage : details) {
			FileUtil.deleteFile(detailsImage.getSrc());
		}
		bannerImageMapper.deleteByGoods(id);
		detailsImageMapper.deleteByGoods(id);
	}

}
