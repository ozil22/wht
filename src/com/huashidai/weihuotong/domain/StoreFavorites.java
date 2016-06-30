package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 店铺收藏夹
 * 
 * @author ozil
 *
 */
public class StoreFavorites implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2416734835718913586L;
	private Long id;
	private Date time;
	private Long userId;
	private Long storeId;
	private String image;
	
	private String storeName;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getStoreId() {
		return storeId;
	}
	public void setStoreId(Long storeId) {
		this.storeId = storeId;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}
