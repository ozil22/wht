package com.huashidai.weihuotong.utils;

import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.huashidai.weihuotong.domain.Employee;
import com.huashidai.weihuotong.domain.SystemLog;
import com.huashidai.weihuotong.service.IMenuService;
import com.huashidai.weihuotong.service.ISystemLogService;

/**
 * 系统日志工具类
 * @author ozil
 *
 */
@Component
public class SystemLogUtil {
	@Autowired
	private ISystemLogService systemLogService;
	
	public SystemLogUtil(){
	}
	
	//写入日志的方法
	public void writeLog(JoinPoint joinPoint){
		//获取当前操作的Service类
		Object target = joinPoint.getTarget();
		//判断如果是保存日志的Service就不写入日志
		if (target instanceof ISystemLogService || target instanceof IMenuService) {
			return;
		}
		String className = target.getClass().getName();//获取这次操作的Service类的全限定名
		//System.out.println(className);
		//获取这次操作的方法签名
		Signature signature = joinPoint.getSignature();
		//获取方法名
		String methodName = signature.getName();
		//拼接这次操作的 信息 全类名:方法名
		String function = className + ":" + methodName;
		//创建日志对象
		SystemLog systemLog = new SystemLog();
		systemLog.setOpTime(new Date());//设置操作时间
		systemLog.setOpIP(UserContext.getIP());//设置访问IP
		Employee user = UserContext.getEmployee();//获取当前登录用户
		if (user != null) {
			systemLog.setOpUser(user.getUsername());//设置访问用户
		}
		systemLog.setFunction(function);//设置用户的操作
		//保存日志
		systemLogService.save(systemLog);
	}
}
