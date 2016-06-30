package com.huashidai.weihuotong.pay;

import java.math.BigDecimal;


public class ChargeParam {
	/**
	 * 支付宝手机支付
	 */
	public final static String ALIPAY = "alipay"; 
	/**
	 * 支付宝手机网页支付
	 */
	public final static String ALIPAY_WAP = "alipay_wap"; 
	/**
	 * 微信手机支付
	 */
	public final static String WX = "wx"; 
	/**
	 * 微信公众号
	 */
	public final static String WX_PUB = "wx_pub"; 

	private String order_no;//支付订单 (订单号开头1、2、 3、 4、 5、 6、)
	private Integer amount;//支付金额（分）
	private String channel;//支付方式(微信: wx )
	private String currency="cny";//支付币种
	private String client_ip;//IP
	private String subject;//商品的标题不超过16个汉字  32个字符
	private String body;//商品内容  不超过64个汉字 128个字符
	
	public ChargeParam() {
	}
	public ChargeParam(String order_no, BigDecimal amount, String channel,
			String subject, String body) {
		this.order_no = order_no;
		this.amount = amount.multiply(new BigDecimal(100)).intValue();
		this.channel = channel;
		this.subject = subject;
		this.body = body;
	}
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount.multiply(new BigDecimal(100)).intValue();
	}
	public String getChannel() {
		return channel;
	}
	public void setChannel(String channel) {
		this.channel = channel;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getClient_ip() {
		return client_ip;
	}
	public void setClient_ip(String client_ip) {
		this.client_ip = client_ip;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	
	@Override
	public String toString() {
		return "PingPay [order_no=" + order_no + ", amount=" + amount
				+ ", channel=" + channel + ", currency=" + currency
				+ ", client_ip=" + client_ip + ", subject=" + subject
				+ ", body=" + body + "]";
	}
}
