package com.huashidai.weihuotong.redis;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/**
 * 定义那些方法需要清除缓存
 * @author ozil
 *
 */
@Retention(RetentionPolicy.RUNTIME)  
@Target({ElementType.METHOD})  
public @interface CacheEvict {
	public enum ExpressionMode{  
        ALL;        //清除所有该service的缓存
    }  
      
    public ExpressionMode expressionMode() default ExpressionMode.ALL;       //缓存清除表达式模式
}
