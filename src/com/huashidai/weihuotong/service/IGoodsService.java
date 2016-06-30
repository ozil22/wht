package com.huashidai.weihuotong.service;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.Goods;
import com.huashidai.weihuotong.domain.paramList.ProductList;
import com.huashidai.weihuotong.query.GoodsQuery;
import com.huashidai.weihuotong.query.PageResult;

public interface IGoodsService {
	/**
	 * 进入商品
	 * @param goodsId 商品id
	 * @return
	 */
	Map<String,Object> enterGoods(Long goodsId);
	/**
	 * 商品高级查询
	 * @param qu
	 * @return
	 */
	PageResult<Goods> query(GoodsQuery qu);
	/**
	 * 代理商品
	 * @param goodsId 商品id
	 * @param price 代理价格
	 * @param details 商品描述
	 * @param userId 代理商id
	 * @param proxyType 代理方式
	 */
	Map<String,Object> proxyGoods(Long goodsId,BigDecimal price,String details,Long userId,Integer proxyType);
	/**
	 * 去购买商品
	 * @param goodsId 商品id
	 * @return 商品所有规格的货品信息
	 */
	List<Object> toBuyProduct(Long goodsId);
	/**
	 * 最新商品
	 * @return
	 */
	Map<String,Object> newGoods(GoodsQuery goodsQuery);
	/**
	 * 删除商品
	 * @param id
	 */
	void delete(Long id,String remark);
	/**
	 * 商品下架
	 * @param id
	 */
	void leave(Long id,String remark);
	/**
	 * 商品上架
	 * @param id
	 */
	void up(Long id);
	/**
	 * 保存商品或修改
	 * @param bannerImage 商品展示图片
	 * @param detailsImage 详情图片
	 * @param products 商品的所有货品信息
	 * @param goods 商品信息
	 * @throws IOException 
	 */
	void addGoods(MultipartFile[] bannerImage, MultipartFile[] detailsImage,
			ProductList products, Goods goods) throws IOException;
	/**
	 * 去修改商品
	 * @param goodsId 商品id
	 */
	Map<String,Object> toEditGoods(Long goodsId) ;
	
	/**
	 * 搜索商品
	 * @param goodsQuery
	 * @return
	 */
	Map<String, Object> searchGoods(GoodsQuery goodsQuery);
	/**
	 * 热卖商品
	 * @return
	 */
	Map<String, Object> hotGoods(GoodsQuery goodsQuery);
	/**
	 * 查询总数
	 * @param qu
	 * @return
	 */
	Long queryTotal(GoodsQuery qu);
	/**
	 * 更新库存
	 * @param goods
	 * @return 0更新失败
	 */
	int updateNum(Goods goods);
	/**
	 * 增加销量
	 * @param num
	 * @param id
	 */
	void addSaleNum(Integer num, Long id);
}
