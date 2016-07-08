package com.huashidai.weihuotong.app;

/**
 * 商品相关的接口
 */
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.huashidai.weihuotong.domain.DetailsImage;
import com.huashidai.weihuotong.domain.Express;
import com.huashidai.weihuotong.domain.Goods;
import com.huashidai.weihuotong.domain.paramList.PostItemList;
import com.huashidai.weihuotong.domain.paramList.ProductList;
import com.huashidai.weihuotong.domain.paramList.ProductOrderItemList;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.query.GoodsQuery;
import com.huashidai.weihuotong.query.ProductOrderQuery;
import com.huashidai.weihuotong.query.ProductQuery;
import com.huashidai.weihuotong.service.IBrandService;
import com.huashidai.weihuotong.service.IDetailsImageService;
import com.huashidai.weihuotong.service.IExpressService;
import com.huashidai.weihuotong.service.IGoodsService;
import com.huashidai.weihuotong.service.IPostageTemplateService;
import com.huashidai.weihuotong.service.IProductOrderService;
import com.huashidai.weihuotong.service.IProductService;
import com.huashidai.weihuotong.utils.AppResult;

@Controller
@RequestMapping("/app")
public class GoodsAPP {
	@Autowired
	private IGoodsService goodsService;
	@Autowired
	private IDetailsImageService detailsImageService;
	@Autowired
	private IProductOrderService productOrderService;
	@Autowired
	private IBrandService brandService;
	@Autowired
	private IProductService productService;
	@Autowired
	private IExpressService expressService;
	@Autowired
	private IPostageTemplateService postageTemplateService;

	/**
	 * 搜索商品
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping("/searchGoods")
	@ResponseBody
	public AppResult searchGoods(GoodsQuery goodsQuery) {

		AppResult appResult = null;
		try {
			goodsQuery.setState(1);
			Map<String, Object> map = goodsService.searchGoods(goodsQuery);
			// 封装响应信息
			appResult = new AppResult(map);
		} catch (Exception e) {
			// 封装响应信息
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 获取全部品牌
	 * 
	 * @return
	 */
	@RequestMapping("/allBrand")
	@ResponseBody
	public AppResult allBrand() {
		AppResult appResult = null;
		try {
			List<Object> list = brandService.getAll();
			appResult = new AppResult(list);
		} catch (Exception e) {
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 新增商品或者修改
	 * 
	 * @param bannerImage
	 *            banner图集合
	 * @param detailsImage
	 *            详情图片
	 * @param products
	 *            货品集合
	 * @param goods
	 *            商品信息(有id就是修改)
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/addGoods")
	@ResponseBody
	public AppResult addGoods(
			@RequestParam("bannerImage") MultipartFile[] bannerImage,
			@RequestParam("detailsImage") MultipartFile[] detailsImage,
			ProductList products, Goods goods) throws IOException {
		AppResult appResult = null;
		try {
			goodsService.addGoods(bannerImage, detailsImage, products, goods);
			appResult = new AppResult(null);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 去修改商品
	 * 
	 * @param goodsId
	 * @return
	 */
	@RequestMapping("/toEditGoods")
	@ResponseBody
	public AppResult toEditGoods(Long goodsId) {
		AppResult appResult = null;
		try {
			Map<String, Object> map = goodsService.toEditGoods(goodsId);
			appResult = new AppResult(map);
		} catch (Exception e) {
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 点击进入商品
	 * 
	 * @param goodsId
	 * @return
	 */
	@RequestMapping("/enterGoods")
	@ResponseBody
	public AppResult enterGoods(Long goodsId) {

		AppResult appResult = null;
		try {
			Map<String, Object> data = goodsService.enterGoods(goodsId);
			appResult = new AppResult(data);
		} catch (LogicException e) {
			appResult = new AppResult(e.getMessage(), e.getErrorCode());
		}
		return appResult;
	}

	/**
	 * 进入商品图文详情(网页)
	 * 
	 * @param goodsId
	 * @return
	 */
	@RequestMapping("/detailsImages")
	public ModelAndView detailsImages(Long goodsId) {
		List<DetailsImage> images = detailsImageService.getByGoods(goodsId);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("images", images);
		modelAndView.setViewName("/app/goodsWebpage");
		return modelAndView;
	}

	/**
	 * 代理商品(转发)
	 * 
	 * @param goodsId
	 * @return
	 */
	@RequestMapping("/proxyGoods")
	@ResponseBody
	public AppResult proxyGoods(Long goodsId, BigDecimal price, String details,
			Long userId, Integer proxyType) {
		AppResult appResult = null;
		try {
			Map<String, Object> map = goodsService.proxyGoods(goodsId, price,
					details, userId, proxyType);
			appResult = new AppResult(map);
		} catch (Exception e) {
			appResult = new AppResult("转发失败!", null);
		}
		return appResult;
	}

	/**
	 * 进入采购进货页面
	 * 
	 * @param goodsId
	 * @return
	 */
	@RequestMapping("/toBuyProduct")
	@ResponseBody
	public AppResult toBuyProduct(Long goodsId) {
		AppResult appResult = null;
		try {
			List<Object> products = goodsService.toBuyProduct(goodsId);
			appResult = new AppResult(products);
		} catch (Exception e) {
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 获取最新商品(一周内)
	 * 
	 * @param storeId
	 *            店铺id(进入新品专区时不需要)
	 * @param parentId
	 *            一级分类id
	 * @return
	 */
	@RequestMapping("/newGoods")
	@ResponseBody
	public AppResult newGoods(GoodsQuery goodsQuery) {

		AppResult appResult = null;
		try {
			Map<String, Object> newGoods = goodsService.newGoods(goodsQuery);
			appResult = new AppResult(newGoods);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 获取热卖商品(销量超过100)
	 * 
	 * @param storeId
	 *            店铺id(进入新品专区时不需要)
	 * @param parentId
	 *            一级分类id
	 * @return
	 */
	@RequestMapping("/hotGoods")
	@ResponseBody
	public AppResult hotGoods(GoodsQuery goodsQuery) {

		AppResult appResult = null;
		try {
			Map<String, Object> newGoods = goodsService.hotGoods(goodsQuery);
			appResult = new AppResult(newGoods);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 计算邮费
	 * @param addressId
	 * @param postItemList
	 * @return
	 */
	@RequestMapping("/postages")
	@ResponseBody
	public AppResult postages(Long addressId, PostItemList postItemList) {
		AppResult appResult = null;
		try {
			List<Object> postages =  postageTemplateService.postages(addressId,postItemList);
			appResult = new AppResult(postages);
		} catch (LogicException e) {
			appResult = new AppResult(e.getMessage(),e.getErrorCode());
		}
		return appResult;
	}
	
	// @RequestMapping("/submitOrder")
	// @ResponseBody
	// public AppResult submitOrder(@RequestBody List<Map<String, String>> maps)
	// {
	// AppResult appResult = null;
	// try {
	// Map<String, Object> submitOrder = productOrderService.submitOrder(maps);
	// appResult = new AppResult(submitOrder);
	// } catch (LogicException e) {
	// appResult = new AppResult();
	// }
	// return appResult;
	// }
	/**
	 * 提交订单
	 * 
	 * @param items
	 *            订单明细集合
	 * @param userId
	 *            app购买用户id
	 * @param addressId
	 *            地址id
	 * @param customerId
	 *            网页购买客户id
	 * @param proxyGoodsId
	 *            代理商品id
	 * @return
	 */
	@RequestMapping("/submitOrder")
	@ResponseBody
	public AppResult submitOrder(ProductOrderItemList items, Long userId,
			Long addressId, Long customerId, Long proxyGoodsId) {
		AppResult appResult = null;
		try {
			Map<String, Object> submitOrder = productOrderService.submitOrder(
					items, userId, addressId, customerId, proxyGoodsId);
			appResult = new AppResult(submitOrder);
		} catch (LogicException e) {
			appResult = new AppResult(e.getMessage(),e.getErrorCode());
		}
		return appResult;
	}

	/**
	 * 获取商家的所有货品
	 * 
	 * @return
	 */
	@RequestMapping("/searchProduct")
	@ResponseBody
	public AppResult searchProduct(ProductQuery productQuery) {
		AppResult appResult = null;
		try {
			Map<String, Object> map = productService
					.searchProduct(productQuery);
			appResult = new AppResult(map);
		} catch (Exception e) {
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 
	 * 下架操作
	 */
	@RequestMapping("/goodsLeave")
	@ResponseBody
	public AppResult leave(Long goodsId) {
		AppResult appResult = null;
		try {
			goodsService.leave(goodsId,"");

			appResult = new AppResult(null);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 
	 * 上架操作
	 */
	@RequestMapping("/goodsUp")
	@ResponseBody
	public AppResult up(Long goodsId) {
		AppResult appResult = null;
		try {
			goodsService.up(goodsId);

			appResult = new AppResult(null);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 
	 * 删除货品
	 */
	@RequestMapping("/deleteProduct")
	@ResponseBody
	public AppResult deleteProduct(Long productId) {
		AppResult appResult = null;
		try {
			productService.delete(productId);
			appResult = new AppResult(null);
		} catch (LogicException e) {
			appResult = new AppResult(e.getMessage(),e.getErrorCode());
		}
		return appResult;
	}
	/**
	 * 
	 * 删除商品
	 */
	@RequestMapping("/deleteGoods")
	@ResponseBody
	public AppResult deleteGoods(Long goodsId) {
		AppResult appResult = null;
		try {
			goodsService.delete(goodsId, "店铺删除");
			appResult = new AppResult(null);
		}  catch (LogicException e) {
			appResult = new AppResult(e.getMessage(),e.getErrorCode());
		}
		return appResult;
	}
	
	/**
	 * 查询订单
	 * 
	 * @param qu
	 * @return
	 */
	@RequestMapping("/queryOrder")
	@ResponseBody
	public AppResult userOrder(ProductOrderQuery qu) {
		AppResult appResult = null;
		try {
			Map<String,Object> map = productOrderService.queryMap(qu);
			appResult = new AppResult(map);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}
	
	/**
	 * 修改订单金额
	 */
	@RequestMapping("/updateOrderPrice")
	@ResponseBody
	public AppResult updateOrderPrice(Long productOrderId,BigDecimal price) {
		AppResult appResult = null;
		try {
			productOrderService.updateOrderPrice(productOrderId,price);
			appResult = new AppResult(null);
		} catch (LogicException e) {
			appResult = new AppResult(e.getMessage(),e.getErrorCode());
		}
		return appResult;
	}
	/**
	 * 取消订单
	 */
	@RequestMapping("/cancleOrder")
	@ResponseBody
	public AppResult cancleOrder(Long productOrderId) {
		AppResult appResult = null;
		try {
			productOrderService.cancelOrder(productOrderId);
			appResult = new AppResult(null);
		} catch (LogicException e) {
			appResult = new AppResult(e.getMessage(),e.getErrorCode());
		}
		return appResult;
	}
	/**
	 * 删除订单
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public AppResult delete(Long productOrderId) {
		AppResult appResult = null;
		try {
			productOrderService.cancelOrder(productOrderId);
			appResult = new AppResult(null);
		} catch (LogicException e) {
			appResult = new AppResult(e.getMessage(),e.getErrorCode());
		}
		return appResult;
	}
	/**
	 * 发货
	 * @param productOrderId 订单id
	 * @param expressNum 运单号
	 * @param expressCode 快递公司代码
	 * @return
	 */
	@RequestMapping("/shipOrder")
	@ResponseBody
	public AppResult shipOrder(Long productOrderId,String expressNum,String expressCode) {
		AppResult appResult = null;
		try {
			productOrderService.shipOrder(productOrderId,expressNum,expressCode);
			appResult = new AppResult(null);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}
	/**
	 * 收货
	 */
	@RequestMapping("/confirmOrder")
	@ResponseBody
	public AppResult confirmOrder(Long productOrderId) {
		AppResult appResult = null;
		try {
			productOrderService.confirmOrder(productOrderId);
			appResult = new AppResult(null);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}
	/**
	 * 申请退货
	 */
	@RequestMapping("/applyReturnOrder")
	@ResponseBody
	public AppResult applyReturnOrder(Long productOrderId) {
		AppResult appResult = null;
		try {
			productOrderService.applyReturnOrder(productOrderId);
			appResult = new AppResult(null);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}
	/**
	 * 确认退货
	 */
	@RequestMapping("/agreeReturnOrder")
	@ResponseBody
	public AppResult agreeReturnOrder(Long productOrderId) {
		AppResult appResult = null;
		try {
			productOrderService.agreeReturnOrder(productOrderId);
			appResult = new AppResult(null);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}
	/**
	 * 获取所有快递公司
	 */
	@RequestMapping("/allExpress")
	@ResponseBody
	public AppResult allExpress(Long productOrderId) {
		AppResult appResult = null;
		try {
			List<Express> all = expressService.getAll();
			appResult = new AppResult(all);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}
	
	
	
}
