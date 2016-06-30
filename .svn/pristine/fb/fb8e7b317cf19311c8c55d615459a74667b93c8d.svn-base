package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.util.Date;

public class SystemLog implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1728935899701641487L;
	private Long id;
	private String opUser;//操作用户
	private Date opTime;//操作时间
	private String opIP;//操作IP
	private String function;// 操作信息 全类名:方法名
	private String params;// 参数
	private String description;//方法描述
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getOpUser() {
		return opUser;
	}
	public void setOpUser(String opUser) {
		this.opUser = opUser;
	}
	public Date getOpTime() {
		return opTime;
	}
	public void setOpTime(Date opTime) {
		this.opTime = opTime;
	}
	public String getOpIP() {
		return opIP;
	}
	public void setOpIP(String opIP) {
		this.opIP = opIP;
	}
	public String getFunction() {
		return function;
	}
	public void setFunction(String function) {
		this.function = function;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getParams() {
		return params;
	}
	public void setParams(String params) {
		this.params = params;
	}
	@Override
	public String toString() {
		return "SystemLog [id=" + id + ", opUser=" + opUser + ", opTime="
				+ opTime + ", opIP=" + opIP + ", function=" + function + "]";
	}
}
