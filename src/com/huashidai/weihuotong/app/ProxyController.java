package com.huashidai.weihuotong.app;

/**
 * 代理商品相关网页接口
 */
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.huashidai.weihuotong.domain.Address;
import com.huashidai.weihuotong.domain.City;
import com.huashidai.weihuotong.domain.Customer;
import com.huashidai.weihuotong.domain.Goods;
import com.huashidai.weihuotong.domain.Product;
import com.huashidai.weihuotong.domain.Province;
import com.huashidai.weihuotong.domain.ProxyGoods;
import com.huashidai.weihuotong.domain.User;
import com.huashidai.weihuotong.domain.paramList.ProductOrderItemList;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.mapper.GoodsMapper;
import com.huashidai.weihuotong.mapper.ProductMapper;
import com.huashidai.weihuotong.mapper.ProductOrderItemMapper;
import com.huashidai.weihuotong.mapper.ProxyGoodsMapper;
import com.huashidai.weihuotong.pay.PayController;
import com.huashidai.weihuotong.service.IAddressService;
import com.huashidai.weihuotong.service.ICityService;
import com.huashidai.weihuotong.service.ICustomerService;
import com.huashidai.weihuotong.service.IProductOrderService;
import com.huashidai.weihuotong.service.IProvinceService;
import com.huashidai.weihuotong.utils.AjaxResult;
import com.huashidai.weihuotong.utils.AppResult;
import com.huashidai.weihuotong.utils.RandomUtil;
import com.huashidai.weihuotong.utils.SMSUtil;
import com.huashidai.weihuotong.utils.UserContext;

@Controller
@RequestMapping("/proxy")
public class ProxyController {
	@Autowired
	private ProxyGoodsMapper proxyGoodsMapper;
	@Autowired
	private GoodsMapper goodsMapper;
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private ICustomerService customerService;
	@Autowired
	private IAddressService addressService;
	@Autowired
	private IProvinceService provinceService;
	@Autowired
	private ICityService cityService;
	@Autowired
	private IProductOrderService productOrderService;
	@Autowired
	private ProductOrderItemMapper productOrderItemMapper;
	@Autowired
	private PayController payController;

	/**
	 * 代理商品页面
	 * 
	 * @return
	 */
	@RequestMapping("/enterProxyGoods")
	public ModelAndView enterProxyGoods(Long proxyGoodsId) {
		ModelAndView modelAndView = new ModelAndView("proxy/proxyGoods");
		ProxyGoods proxyGoods = proxyGoodsMapper.get(proxyGoodsId);
		modelAndView.addObject("proxyGoods", proxyGoods);
		User user = proxyGoods.getUser();
		modelAndView.addObject("proxyUser", user);
		Goods goods = proxyGoods.getGoods();
		goods = goodsMapper.getMap(goods.getId());
		modelAndView.addObject("goods", goods);
		List<Product> products = productMapper.getByGoods(goods.getId());
		modelAndView.addObject("products", products);
		return modelAndView;
	}

	/**
	 * 订单页面
	 * 
	 * @return
	 */
	@RequestMapping("/proxyOrder")
	public ModelAndView proxyOrder(Long productId, Integer productNum,
			String image, String name, BigDecimal postage, BigDecimal price,
			Long proxyGoodsId) {
		ModelAndView modelAndView = new ModelAndView("proxy/proxyOrder");
		modelAndView.addObject("productId", productId);
		modelAndView.addObject("productNum", productNum);
		modelAndView.addObject("proxyGoodsId", proxyGoodsId);
		modelAndView.addObject("name", name);
		modelAndView.addObject("image", image);
		modelAndView.addObject("price", price);
		modelAndView.addObject("postage", postage);
		BigDecimal productPrice = price.multiply(new BigDecimal(productNum));
		modelAndView.addObject("productPrice", productPrice);
		BigDecimal totalPrice = productPrice.add(postage);
		modelAndView.addObject("totalPrice", totalPrice);
		// 获取地址
		Customer customer = UserContext.getCustomer();
		if (customer != null) {
			List<Address> allAddress = addressService.getByCustomer(customer
					.getId());
			modelAndView.addObject("allAddress", allAddress);
			if (allAddress != null && !allAddress.isEmpty()
					&& allAddress.get(0).getDefaultAddress() == 1) {
				modelAndView.addObject("address", allAddress.get(0));
			}
		}
		List<Province> provinces = provinceService.getAll();
		modelAndView.addObject("provinces", provinces);

		return modelAndView;
	}

	/**
	 * 短信登录验证码
	 * 
	 * @return
	 */
	@RequestMapping("/customerRandomCode")
	@ResponseBody
	public AjaxResult customerRandomCode(String phone) {
		AjaxResult ajaxResult = null;
		String templateId = "23425";
		String randomNum = RandomUtil.randomNum(6);
		String param = randomNum + ",5";
		try {
			SMSUtil.sendSMS(templateId, phone, param);
			Customer customer = new Customer();
			customer.setUsername(phone);
			customer.setPassword(randomNum);
			UserContext.setCustomerRandom(customer);
			ajaxResult = new AjaxResult("发送成功,如果是第一次登陆,该验证码将作为初始密码!");
		} catch (Exception e) {
			ajaxResult = new AjaxResult("发送失败,请稍后再试!", null);
		}
		return ajaxResult;
	}

	/**
	 * 登陆
	 * 
	 * @param username
	 * @param password
	 * @param rememberName
	 * @param rememberPassword
	 * @param randomCode
	 * @return
	 */
	@RequestMapping("/customerLogin")
	@ResponseBody
	public AppResult checkLogin(String username, String password,
			Boolean rememberName, Boolean rememberPassword, String randomCode) {

		AppResult appResult = null;
		try {
			// 检查登陆
			Customer customer = customerService.findcheckLogin(username,
					password);
			// 注册session
			UserContext.setCustomer(customer);
			// 封装响应信息
			appResult = new AppResult(customer.getId());
		} catch (LogicException e) {
			// 封装响应信息
			appResult = new AppResult(e.getMessage(), e.getErrorCode());
		}
		return appResult;
	}

	/**
	 * 设置为默认地址
	 * 
	 * @param id
	 *            地址id
	 * @return
	 */
	@RequestMapping("/updateDefault")
	@ResponseBody
	public AppResult updateDefault(Long id) {
		AppResult appResult = null;
		try {
			addressService.updateCustomerDefault(id);
			appResult = new AppResult(null);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 删除地址
	 * 
	 * @param userId
	 * @param image
	 * @return
	 */
	@RequestMapping("/deleteAddress")
	@ResponseBody
	public AppResult deleteAddress(Long addressId) {
		AppResult appResult = null;
		try {
			addressService.delete(addressId);
			appResult = new AppResult(null);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult("删除失败,请重试！", null);
		}
		return appResult;
	}

	/**
	 * 城市
	 * 
	 * @return
	 */
	@RequestMapping("/city")
	@ResponseBody
	public AppResult city(Long provinceId) {

		AppResult appResult = null;
		try {
			List<City> citys = cityService.getByProvince(provinceId);
			appResult = new AppResult(citys);
		} catch (Exception e) {
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 新增收货地址
	 * 
	 * @param userId
	 * @param image
	 * @return
	 */
	@RequestMapping("/saveAddress")
	@ResponseBody
	public AppResult saveAddress(Address address) {
		AppResult appResult = null;
		try {
			Long id = address.getId();
			if (id != null && id != -1) {
				addressService.update(address);
			} else {
				addressService.save(address);
			}
			appResult = new AppResult(null);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 获取地址信息
	 * 
	 * @param userId
	 * @param image
	 * @return
	 */
	@RequestMapping("/getAddress")
	@ResponseBody
	public AppResult getAddress(Long addressId) {
		AppResult appResult = null;
		try {
			Address address = addressService.get(addressId);
			appResult = new AppResult(address);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult("系统繁忙,请重试！", null);
		}
		return appResult;
	}

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
	 * @param channel
	 *            支付方式 
	 * @return
	 */
	@RequestMapping("/submitOrder")
	@ResponseBody
	public AppResult submitOrder(ProductOrderItemList items, Long userId,
			Long addressId, Long customerId, Long proxyGoodsId) {
		AppResult appResult = null;
		try {
			Map<String, Object> map = productOrderService.submitOrder(items,
					userId, addressId, customerId, proxyGoodsId);
			appResult = new AppResult(map);
		} catch (LogicException e) {
			appResult = new AppResult(e.getMessage(), e.getErrorCode());
		} 
		return appResult;
	}
	
}
