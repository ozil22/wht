package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.util.Date;

public class SystemException implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1728935899701641487L;
	private Long id;
	private Date opTime;//操作时间
	private String opIP;//操作IP
	private String function;// 操作信息 全类名:方法名
	private String params;// 参数
	private String exceptionCode;//异常名
	private String exceptionDetail;//异常信息
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	
	public String getExceptionDetail() {
		return exceptionDetail;
	}
	public void setExceptionDetail(String exceptionDetail) {
		this.exceptionDetail = exceptionDetail;
	}
	public String getParams() {
		return params;
	}
	public void setParams(String params) {
		this.params = params;
	}
	
	public String getExceptionCode() {
		return exceptionCode;
	}
	public void setExceptionCode(String exceptionCode) {
		this.exceptionCode = exceptionCode;
	}
	@Override
	public String toString() {
		return "SystemLog [id=" + id  + ", opTime="
				+ opTime + ", opIP=" + opIP + ", function=" + function + "]";
	}
}
