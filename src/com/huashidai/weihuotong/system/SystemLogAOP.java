package com.huashidai.weihuotong.system;

import java.lang.reflect.Method;
import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.huashidai.weihuotong.domain.Employee;
import com.huashidai.weihuotong.domain.SystemException;
import com.huashidai.weihuotong.domain.SystemLog;
import com.huashidai.weihuotong.service.ISystemExceptionService;
import com.huashidai.weihuotong.service.ISystemLogService;
import com.huashidai.weihuotong.utils.UserContext;

/**
 * 系统日志切点类类
 * 
 * @author ozil
 *
 */
@Aspect 
@Component
public class SystemLogAOP {
	@Autowired
	private ISystemLogService systemLogService;
	@Autowired
	private ISystemExceptionService systemExceptionService;
	
	// 本地异常日志记录对象
	private static final Logger logger = LoggerFactory
			.getLogger(SystemLogAOP.class);

	// Service层切点
	@Pointcut("execution(* com.huashidai.weihuotong.service..*.*(..))")
	public void serviceAspect() {
	}

	// Controller层切点
	@Pointcut("@annotation(com.huashidai.weihuotong.system.MethodAnnotation)")
	public void controllerAspect() {
	}

	/**
	 * 前置通知 用于拦截Controller层记录用户的操作
	 * 
	 * @param joinPoint
	 *            切点
	 */
	@Before("controllerAspect()")
	public void doBefore(JoinPoint joinPoint) {

		Employee employee = UserContext.getEmployee();// 获取当前登录用户
		// 请求的IP
		String ip = UserContext.getIP();
		// 获取用户请求方法的参数
		String params = "";
		if (joinPoint.getArgs() != null && joinPoint.getArgs().length > 0) {
			for (int i = 0; i < joinPoint.getArgs().length; i++) {
				params += joinPoint.getArgs()[i] + ";";
			}
		}
		try {
			// *========控制台输出=========*//
			System.out.println("=====前置通知开始=====");
			System.out.println("请求方法:"
					+ (joinPoint.getTarget().getClass().getName() + "."
							+ joinPoint.getSignature().getName() + "()"));
			System.out.println("方法描述:"
					+ getControllerMethodDescription(joinPoint));
			System.out.println("请求人:" + employee.getRealName());
			System.out.println("请求IP:" + ip);
			System.out.println("请求参数:" + params);
			// *========数据库日志=========*//
			SystemLog log = new SystemLog();
			 log.setDescription(getControllerMethodDescription(joinPoint));
			 log.setFunction((joinPoint.getTarget().getClass().getName() + "." +
			 joinPoint.getSignature().getName() + "()"));
			 log.setOpIP(ip);
			 log.setParams(params);
			 log.setOpUser(employee.getRealName());
			 log.setOpTime(new Date());;
			// 保存数据库
			systemLogService.save(log);
			System.out.println("=====前置通知结束=====");
		} catch (Exception e) {
			// 记录本地异常日志
			logger.error("=====================前置通知异常===========================");
			logger.error("异常信息:{}", e.getMessage());
		}
	}

	/**  
     * 异常通知 用于拦截service层记录异常日志  
     *  
     * @param joinPoint  
     * @param e  
     */    
    @AfterThrowing(pointcut = "serviceAspect()", throwing = "e")    
     public  void doAfterThrowing(JoinPoint joinPoint, Throwable e) {    
		// 请求的IP
		String ip = UserContext.getIP();
		// 获取用户请求方法的参数
		String params = "";
		if (joinPoint.getArgs() != null && joinPoint.getArgs().length > 0) {
			for (int i = 0; i < joinPoint.getArgs().length; i++) {
				params += joinPoint.getArgs()[i] + ";";
			}
		}
         try {    
              /*========控制台输出=========*/    
            System.out.println("=====异常通知开始=====");    
            System.out.println("异常代码:" + e.getClass().getName());    
            System.out.println("异常信息:" + e.getMessage());    
            System.out.println("异常方法:" + (joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()"));    
            System.out.println("请求IP:" + ip);    
            System.out.println("请求参数:" + params);    
               /*==========数据库日志=========*/    
            SystemException exception = new SystemException();   
            exception.setExceptionCode(e.getClass().getName());    
            exception.setExceptionDetail(e.getMessage());    
            exception.setFunction((joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()"));    
            exception.setParams(params);    
            exception.setOpTime(new Date());    
            exception.setOpIP(ip);  
            //保存数据库    
            systemExceptionService.save(exception);   
            System.out.println("=====异常通知结束=====");    
        }  catch (Exception ex) {    
            //记录本地异常日志    
            logger.error("==============异常通知异常=================");    
            logger.error("异常信息:{}", ex.getMessage());    
        }    
         /*==========记录本地异常日志==========*/    
        logger.error("异常方法:{}异常代码:{}异常信息:{}参数:{}", joinPoint.getTarget().getClass().getName() + joinPoint.getSignature().getName(), e.getClass().getName(), e.getMessage(), params);    
    
    }    
	
	
	/**
	 * 获取注解中对方法的描述信息 用于Controller层注解
	 * 
	 * @param joinPoint
	 *            切点
	 * @return 方法描述
	 * @throws Exception
	 */
	public static String getControllerMethodDescription(JoinPoint joinPoint)
			throws Exception {
		String targetName = joinPoint.getTarget().getClass().getName();
		String methodName = joinPoint.getSignature().getName();
		Object[] arguments = joinPoint.getArgs();
		Class<?> targetClass = Class.forName(targetName);
		Method[] methods = targetClass.getMethods();
		String description = "";
		for (Method method : methods) {
			if (method.getName().equals(methodName)) {
				@SuppressWarnings("rawtypes")
				Class[] clazzs = method.getParameterTypes();
				if (clazzs.length == arguments.length) {
					MethodAnnotation annotation = method
							.getAnnotation(MethodAnnotation.class);
					description = annotation.type().name() + annotation.name();
					break;
				}
			}
		}
		return description;
	}
}