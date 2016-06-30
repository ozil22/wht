package com.huashidai.weihuotong.exception;

/**
 * 逻辑异常（由用户误操作导致的异常）
 * @author Administrator
 *
 */
public class LogicException extends RuntimeException {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6299221236799641670L;
	private Integer errorCode=-99; // 默认值

	public Integer getErrorCode() {
		return errorCode;
	}
	
	public LogicException() {
		super();
	}

	public LogicException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public LogicException(String message, Throwable cause) {
		super(message, cause);
	}

	public LogicException(String message) {
		super(message);
	}
	
	public LogicException(String message,Integer errorCode) {
		super(message);
		this.errorCode = errorCode;
	}

	public LogicException(Throwable cause) {
		super(cause);
	}

	
}
