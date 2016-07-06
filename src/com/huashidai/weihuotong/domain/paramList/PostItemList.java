package com.huashidai.weihuotong.domain.paramList;

import java.util.List;

/**
 * 封装springmvc接收的集合对象
 * 
 * @author ozil
 *
 */
public class PostItemList {
	private List<Long> storeIds;
	private List<Integer> nums;

	public List<Long> getStoreIds() {
		return storeIds;
	}

	public void setStoreIds(List<Long> storeIds) {
		this.storeIds = storeIds;
	}

	public List<Integer> getNums() {
		return nums;
	}

	public void setNums(List<Integer> nums) {
		this.nums = nums;
	}

}
