package com.huashidai.weihuotong.domain;

import java.io.Serializable;

/**
 * 地址管理
 * @author Administrator
 *
 */
public class Address implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -1463827462946156968L;
	private Long id;
	private String name;//姓名
	private String phone;//电话号码
	private City city;//城市
	private String address;//详细地址
	private Integer defaultAddress = 0;//默认地址(1位默认地址，0不为默认地址)
	private User user;
	private Customer customer;
	
	public Address(Long id) {
		this.id = id;
	}
	public Address() {
	}
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getDefaultAddress() {
		return defaultAddress;
	}
	public void setDefaultAddress(Integer defaultAddress) {
		this.defaultAddress = defaultAddress;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public City getCity() {
		return city;
	}
	public void setCity(City city) {
		this.city = city;
	}
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	@Override
	public String toString() {
		return "Address [id=" + id + ", name=" + name + ", phone=" + phone
				+ ", city=" + city + ", address=" + address
				+ ", defaultAddress=" + defaultAddress + ", user=" + user
				+ ", customer=" + customer + "]";
	}
}
