package com.huashidai.weihuotong.pay;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.huashidai.weihuotong.domain.Account;
import com.huashidai.weihuotong.domain.ProductOrder;
import com.huashidai.weihuotong.domain.PromotionOrder;
import com.huashidai.weihuotong.domain.Store;
import com.huashidai.weihuotong.domain.SystemAccount;
import com.huashidai.weihuotong.domain.User;
import com.huashidai.weihuotong.service.IAccountService;
import com.huashidai.weihuotong.service.IArticleTypeService;
import com.huashidai.weihuotong.service.IMarginOrderService;
import com.huashidai.weihuotong.service.IProductOrderService;
import com.huashidai.weihuotong.service.IPromotionOrderService;
import com.huashidai.weihuotong.service.ISystemAccountFlowService;
import com.huashidai.weihuotong.service.ISystemAccountService;
import com.huashidai.weihuotong.utils.AppResult;
import com.huashidai.weihuotong.utils.ConstUtil;
import com.huashidai.weihuotong.utils.OrderNumUtil;
import com.huashidai.weihuotong.utils.UserContext;
import com.pingplusplus.Pingpp;
import com.pingplusplus.model.Charge;

@Controller
@RequestMapping("/pay")
public class PayController {
	// private static Logger logger = Logger.getLogger(PayController.class);

	private String apiKey = "sk_live_mDunr1z9yffHGOOCuLmHaj9K";
	private String appId = "app_m5OuvHGmT4uLOKqD";

	// 支付宝网页支付
	private String success_url = "211.149.241.17:8888";// 成功跳转地址
	private String cancel_url = "211.149.241.17:8888";// 取消跳转地址;
	// 微信公众号支付
	private String appSecret = "2ad98cf66cb959e53c8429a44da02e98";// 微信应用密钥
	private String wxAppId = "wx886d437c138bb262";// appId
	private String redirectUrl = "weishang0001.com/pay/webPay/";// 获取openId重定向地址

	@Autowired
	private IProductOrderService productOrderService;
	@Autowired
	private IPromotionOrderService promotionOrderService;
	@Autowired
	private IMarginOrderService marginOrderService;
	@Autowired
	private ISystemAccountService systemAccountService;
	@Autowired
	private ISystemAccountFlowService systemAccountFlowService;
	@Autowired
	private IAccountService accountService;
	@Autowired
	private IArticleTypeService articleService;

	/**
	 * 创建charge对象(app端)
	 * 
	 * @param chargeParam
	 * @param appId
	 * @param apiKey
	 * @param items
	 * @param userId
	 * @return
	 */
	@RequestMapping("/appPay")
	@ResponseBody
	public AppResult appPay(ChargeParam chargeParam) {
		AppResult appResult = null;
		try {
			Pingpp.apiKey = apiKey;
			Map<String, Object> chargeParams = new HashMap<String, Object>();
			Map<String, String> app = new HashMap<String, String>();
			app.put("id", appId);
			chargeParams.put("app", app);
			chargeParams.put("order_no", chargeParam.getOrder_no());
			chargeParams.put("amount", chargeParam.getAmount());
			chargeParams.put("channel", chargeParam.getChannel());
			chargeParams.put("currency", chargeParam.getCurrency());
			chargeParams.put("client_ip", UserContext.getIP());
			chargeParams.put("subject", chargeParam.getSubject());
			chargeParams.put("body", chargeParam.getBody());

			Charge charge = Charge.create(chargeParams);
			appResult = new AppResult(charge);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}


	/**
	 *  微信授权
	 * @param orderParam
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping("outhUrl")
	public String outhUrl(String orderParam) throws UnsupportedEncodingException{
		String str=WxpubOAuth.createOauthUrlForCode(wxAppId,redirectUrl,true,orderParam);
		System.out.println("=============================================================");
		System.out.println("=============================================================");
		System.out.println("=============================================================");
		System.out.println(str);
		System.out.println(redirectUrl);
		System.out.println("=============================================================");
		System.out.println("=============================================================");
		System.out.println("=============================================================");
		System.out.println("=============================================================");
		return "redirect:"+str;
	}
	
	/**
	 * 微信公众号支付
	 * @param state
	 * @param code
	 * @return
	 */
	@RequestMapping("/wxPay")
	@ResponseBody
	public ModelAndView webPay(String state, String code) {
		try {
			Pingpp.apiKey = apiKey;
			String[] order = state.split(",");
			String orderNum = order[0];
			//String payPrice = order[1];
			Map<String, Object> chargeParams = new HashMap<String, Object>();
			Map<String, String> app = new HashMap<String, String>();
			app.put("id", appId);
			chargeParams.put("app", app);
			chargeParams.put("order_no", orderNum);
			// chargeParams.put("amount", payPrice);
			chargeParams.put("amount", 1);
			chargeParams.put("currency", "cny");
			chargeParams.put("channel", "wx_pub");
			// chargeParams.put("client_ip", UserContext.getIP());
			chargeParams.put("client_ip", "211.149.241.17");
			chargeParams.put("subject", "商品");
			chargeParams.put("body", "商品");
			Map<String, String> extra = new HashMap<String, String>();
			String openId = WxpubOAuth.getOpenId(wxAppId, appSecret, code);
			extra.put("open_id", openId);
			chargeParams.put("extra", extra);

			Charge charge = Charge.create(chargeParams);
			ModelAndView modelAndView = new ModelAndView("/proxy/wxPay");
			modelAndView.addObject("charge",charge);
			return modelAndView;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 支付宝网页支付
	 * @param chargeParam
	 * @return
	 */
	@RequestMapping("/aliPay")
	@ResponseBody
	public AppResult webPay(ChargeParam chargeParam) {
		AppResult appResult = null;
		try {
			Pingpp.apiKey = apiKey;
			Map<String, Object> chargeParams = new HashMap<String, Object>();
			Map<String, String> app = new HashMap<String, String>();
			app.put("id", appId);
			chargeParams.put("app", app);
			chargeParams.put("order_no", chargeParam.getOrder_no());
			chargeParams.put("amount", chargeParam.getAmount());
			chargeParams.put("channel", chargeParam.getChannel());
			chargeParams.put("currency", chargeParam.getCurrency());
			// chargeParams.put("client_ip", UserContext.getIP());
			chargeParams.put("client_ip", "211.149.241.17");
			// chargeParams.put("subject", chargeParam.getSubject());
			// chargeParams.put("body", chargeParam.getBody());
			chargeParams.put("subject", "分销的商品");
			chargeParams.put("body", "分销的商品");
			Map<String, String> extra = new HashMap<String, String>();
			extra.put("success_url", success_url);
			extra.put("cancel_url", cancel_url);
			chargeParams.put("extra", extra);

			Charge charge = Charge.create(chargeParams);
			appResult = new AppResult(charge);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * APP支付成功回调方法
	 * 
	 * @param charge
	 * @throws IOException
	 */
	@RequestMapping("/callBack")
	@ResponseBody
	public void callBack() throws IOException {
		// 获取头部所有信息
		HttpServletRequest request = UserContext.getRequest();
		request.setCharacterEncoding("UTF8");
		// 获得 http body 内容
		BufferedReader reader = request.getReader();
		StringBuffer buffer = new StringBuffer();
		String string;
		while ((string = reader.readLine()) != null) {
			buffer.append(string);
		}
		JsonUtil p = new JsonUtil();
		HashMap<String, Object> map = p.toMap(buffer.toString());
		HashMap<String, Object> data = p.toMap(map.get("data").toString());
		HashMap<String, Object> charge = p.toMap(data.get("object").toString());
		String orderNo = charge.get("order_no").toString();// 订单号
		String amount = charge.get("amount").toString();// 金额
		BigDecimal price = new BigDecimal(amount);
		// 商品订单
		if (OrderNumUtil.getOrderType(orderNo).equals(OrderNumUtil.TOTAL_PRE)) {
			List<ProductOrder> orders = productOrderService
					.getByTotalOrderNum(orderNo);
			for (ProductOrder productOrder : orders) {
				productOrderService.updateState(productOrder.getId(),
						ConstUtil.ORDER_WAIT_POST);
				User user = productOrder.getUser();
				Account account = accountService.getByUser(user.getId());
				SystemAccount systemAccount = systemAccountService
						.update(price);
				systemAccountFlowService.createSystemAccountFlow(
						ConstUtil.SYSTEMACCOUNT_ACTIONTYPE_SALE, price,
						systemAccount, user.getNickname()+"购买商品", account);
			}
		} else if (OrderNumUtil.getOrderType(orderNo).equals(
				OrderNumUtil.PRODUCT_PRE)) {
			ProductOrder order = productOrderService.getByOrderNum(orderNo);
			if (order != null) {
				productOrderService.updateState(order.getId(),
						ConstUtil.ORDER_WAIT_POST);
				User user = order.getUser();
				Account account = accountService.getByUser(user.getId());
				SystemAccount systemAccount = systemAccountService
						.update(price);
				systemAccountFlowService.createSystemAccountFlow(
						ConstUtil.SYSTEMACCOUNT_ACTIONTYPE_SALE, price,
						systemAccount, user.getNickname()+"购买商品", account);
			}
			// 广告订单
		} else if (OrderNumUtil.getOrderType(orderNo).equals(
				OrderNumUtil.PROMOTION_PRE)) {
			PromotionOrder order = promotionOrderService.getByOrderNum(orderNo);
			if (order != null) {
				promotionOrderService.completeOrder(order);
				Store store = order.getStore();
				Account account = accountService.getByStore(store.getId());
				SystemAccount systemAccount = systemAccountService
						.update(price);
				systemAccountFlowService.createSystemAccountFlow(
						ConstUtil.SYSTEMACCOUNT_ACTIONTYPE_PROMOTION, price,
						systemAccount, "", account);
			}
		} else if (OrderNumUtil.getOrderType(orderNo).equals(
				OrderNumUtil.MARGIN_PRE)) {
			marginOrderService.completeOrder(price,
					OrderNumUtil.getId(orderNo), orderNo);
		}
	}

	/**
	 * 手机网页支付成功回调方法
	 * 
	 * @param charge
	 * @throws IOException
	 */
	@RequestMapping("/webCallBack")
	public ModelAndView webCallBack() throws IOException {
		// 获取头部所有信息
		HttpServletRequest request = UserContext.getRequest();
		request.setCharacterEncoding("UTF8");
		// 获得 http body 内容
		BufferedReader reader = request.getReader();
		StringBuffer buffer = new StringBuffer();
		String string;
		while ((string = reader.readLine()) != null) {
			buffer.append(string);
		}
		JsonUtil p = new JsonUtil();
		HashMap<String, Object> map = p.toMap(buffer.toString());
		HashMap<String, Object> data = p.toMap(map.get("data").toString());
		HashMap<String, Object> charge = p.toMap(data.get("object").toString());
		String order_no = charge.get("order_no").toString();// 订单号
		// String channel = charge.get("channel").toString();//支付方式
		String amount = charge.get("amount").toString();// 金额
		String subject = charge.get("subject").toString();// 商品名称
		String body = charge.get("body").toString();// 商品描述
		// HashMap<String, Object> extra =
		// p.toMap(data.get("extra").toString());
		// String buyer_account = extra.get("buyer_account ").toString();//支付宝账号
		// 改变订单状态
		BigDecimal price = new BigDecimal(amount);
		ProductOrder order = productOrderService.getByOrderNum(order_no);
		if (order != null) {
			productOrderService.updateState(order.getId(),
					ConstUtil.ORDER_WAIT_POST);
			User user = order.getUser();
			Account account = accountService.getByUser(user.getId());
			SystemAccount systemAccount = systemAccountService.update(price);
			systemAccountFlowService.createSystemAccountFlow(
					ConstUtil.SYSTEMACCOUNT_ACTIONTYPE_SALE, price,
					systemAccount, "", account);
		}
		// 返回成功页面
		ModelAndView modelAndView = new ModelAndView("proxy/paySuccess");
		modelAndView.addObject("orderNum", order_no);
		modelAndView.addObject("amount", amount);
		modelAndView.addObject("subject", subject);
		modelAndView.addObject("body", body);
		return modelAndView;
	}
}