package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.huashidai.weihuotong.utils.ConstUtil;

/**
 * 推广图片(广告)
 * 
 * @author ozil
 *
 */
public class Promotion implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3961593071849516192L;
	private Long id;
	private String image;// 图片路径
	private Integer contentType;// 广告内容类型 1是商品,2是店铺,3就是网页
	private Long contentId;// 广告内容id 
	@DateTimeFormat(pattern = "yyyy-MM-dd") 
	private Date beginTime;// 开始时间
	@DateTimeFormat(pattern = "yyyy-MM-dd") 
	private Date endTime;// 结束时间
	private BigDecimal price;// 价格
	private Integer state = ConstUtil.PROMOTION_NOTPAY;// 状态,-1未付款,0下架,1正常
	//所属用户
	private Store store;
	// 对应的广告位
	private AdPositionId adPositionId;
	
	
	

	public Promotion() {
	}

	public Promotion(Integer contentType, Long contentId, Date beginTime,
			Date endTime, Store store, AdPositionId adPositionId) {
		this.contentType = contentType;
		this.contentId = contentId;
		this.beginTime = beginTime;
		this.endTime = endTime;
		this.store = store;
		this.adPositionId = adPositionId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getContentType() {
		return contentType;
	}

	public void setContentType(Integer contentType) {
		this.contentType = contentType;
	}

	public Long getContentId() {
		return contentId;
	}

	public void setContentId(Long contentId) {
		this.contentId = contentId;
	}

	public AdPositionId getAdPositionId() {
		return adPositionId;
	}

	public void setAdPositionId(AdPositionId adPositionId) {
		this.adPositionId = adPositionId;
	}

	public Date getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}
	

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	@Override
	public String toString() {
		return "Promotion [id=" + id + ", image=" + image + ", contentType="
				+ contentType + ", contentId=" + contentId + ", beginTime="
				+ beginTime + ", endTime=" + endTime + ", price=" + price
				+ ", state=" + state + ", adPositionId=" + adPositionId + "]";
	}
}
