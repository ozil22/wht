package com.huashidai.weihuotong.interceptor;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

  




import com.huashidai.weihuotong.domain.Employee;
import com.huashidai.weihuotong.service.IEmployeeService;
import com.huashidai.weihuotong.domain.Permission;
import com.huashidai.weihuotong.service.IPermissionService;
import com.huashidai.weihuotong.utils.ConstUtil;
import com.huashidai.weihuotong.utils.UserContext;

@Component
public class LoginInterceptor implements HandlerInterceptor {

	@Autowired
	private IEmployeeService employeeService;

  
  
	@Autowired
	IPermissionService permissionService;
	
	public LoginInterceptor(){
		System.out.println("LoginInterceptor初始化。。。。");
	}

	public static final String LOGIN_PATH = "/checkLogin";

	/**
	 * preHandle方法是进行处理器拦截用的，顾名思义，该方法将在Controller处理之前进行调用，
	 * SpringMVC中的Interceptor拦截器是链式的，可以同时存在
	 * 多个Interceptor，然后SpringMVC会根据声明的前后顺序一个接一个的执行
	 * ，而且所有的Interceptor中的preHandle方法都会在
	 * Controller方法调用之前调用。SpringMVC的这种Interceptor链式结构也是可以进行中断的
	 * ，这种中断方式是令preHandle的返 回值为false，当preHandle的返回值为false的时候整个请求就结束了。
	 * 
	 * 1.在调用控制器方法前，拦截 返回值为false，代表拦截 返回值为true，代表放行
	 * 
	 */
		/**
		 * 登陆权限
		 */
  
  
    /** 
     * preHandle方法是进行处理器拦截用的，顾名思义，该方法将在Controller处理之前进行调用，SpringMVC中的Interceptor拦截器是链式的，可以同时存在 
     * 多个Interceptor，然后SpringMVC会根据声明的前后顺序一个接一个的执行，而且所有的Interceptor中的preHandle方法都会在 
     * Controller方法调用之前调用。SpringMVC的这种Interceptor链式结构也是可以进行中断的，这种中断方式是令preHandle的返 
     * 回值为false，当preHandle的返回值为false的时候整个请求就结束了。 
     * 
     * 1.在调用控制器方法前，拦截
     * 返回值为false，代表拦截
     * 返回值为true，代表放行
     * 
     */  
    @Override  
    public boolean preHandle(HttpServletRequest request,  
            HttpServletResponse response, Object handler) throws Exception {  

    	System.out.println("--------加载静态资源-----------------------------------");
		System.out.println(request.getRequestURI());
		System.out.println("--------------------------------------------------");
		/*
		 * 登录拦截
		 * */    	
		// 获取session用户
		Employee employee = UserContext.getEmployee();
		// 检查用户是否存在
		// 如果session中没有就获取cookie中的emoployee对象
		Cookie[] cookies = UserContext.getRequest().getCookies();
		if (employee == null && cookies != null) {
			String name = null;
			String password = null;
			for (Cookie c : cookies) {
				if ("name".equals(c.getName())) {
					name = c.getValue();
				}
				if ("password".equals(c.getName())) {
					password = c.getValue();
				}
			}
			employee = employeeService.findByCookie(name, password);
			// 放入session
			if (employee != null && employee.getState() == ConstUtil.EMPLOYEE_NORMAL) {
				UserContext.setEmployee(employee);
				List<Permission> permission = permissionService.getUserPermission(employee);
				if (permission != null) {
					UserContext.setUserPermission(permission);
				}
			}
		}
		//直接放行超级管理员
		if (employee != null && employee.getId() == 1) {
			return true;
		}

		if (employee == null && !LOGIN_PATH.equals(request.getRequestURI())) {
			response.sendRedirect("/index.jsp");
			return false;
		}
		
		/**
		 * 资源拦截
		 */
//		System.out.println(handler.getClass());
//		HandlerMethod hm =  (HandlerMethod) handler;
//		//1.获得当前用户请求控制器的类的全限定名
//		String reqLaz = hm.getBeanType().getName();
//		//2.获得当前用户请求全限定名中那个方法
//		String reqMethod = hm.getMethod().getName();
//		//3.拼接为资源模式的字符串
//		String resourceName = reqLaz+":"+reqMethod;
//		//4.首先根据所有的权限去查找那些资源是在权限范围内的,在范围内,需要拦截t_resource和表t_Permission进行相关查询
//		
//		//5.根据当前用户与角色的关联,角色与权限的关联,查询到当前角色有那些资源
		
		/*
		 * URL拦截
		 * */
//		System.out.println(handler.getClass());//handelclass org.springframework.web.method.HandlerMethod
		
		//1.确定资源地址
		if(handler instanceof HandlerMethod){
			HandlerMethod hm = (HandlerMethod) handler;  //强转成handler,传入的参数为Object
//			System.out.println(hm.getBeanType().getName() + "**************************************************************");
			String controllerName = hm.getBeanType().getName();//获取全限定类名
			String methodName = hm.getMethod().getName();      //获取方法名
			String resourceName = controllerName + ":" + methodName;
			
			//2.检查资源地址，是否需要权限验证 
			//根据资源获得权限
			Permission permission = permissionService.getPermissionByResources(resourceName);
			//做验证   若不需要权限  直接放行
			if(permission == null){
				System.out.println("++++++++++++++++++++++不需要"+resourceName+"++++++++++++++++++++++++++++");
				return true;    //直接放行
			}else{
				System.out.println("++++++++++++++++++++++需要拦截"+resourceName+"++++++++++++++++++++++++++++");
				//检查用户的权限
				if(!UserContext.checkUserPermission(permission)){
					response.sendRedirect("/data/permission.json");
					System.out.println("拦截的资源"+permission.getResource()+"====================================");
					return false;
				}
				
			}
		}	
		return true;// 放行  
	}


	/**
	 * 该方法也是需要当前对应的Interceptor的preHandle方法的返回值为true时才会执行。该方法将在整个请求完成之后，
	 * 也就是DispatcherServlet渲染了视图执行，
	 * 这个方法的主要作用是用于清理资源的，当然这个方法也只能在当前这个Interceptor的preHandle方法的返回值为true时才会执行。
	 * 
	 * 3.在视图生成之后（后台所有所有逻辑都完成后）
	 */
		
      
    /** 
     * 这个方法只会在当前这个Interceptor的preHandle方法返回值为true的时候才会执行。postHandle是进行处理器拦截用的，它的执行时间是在处理器进行处理之 
     * 后，也就是在Controller的方法调用之后执行，但是它会在DispatcherServlet进行视图的渲染之前执行，也就是说在这个方法中你可以对ModelAndView进行操 
     * 作。这个方法的链式结构跟正常访问的方向是相反的，也就是说先声明的Interceptor拦截器该方法反而会后调用，这跟Struts2里面的拦截器的执行过程有点像， 
     * 只是Struts2里面的intercept方法中要手动的调用ActionInvocation的invoke方法，Struts2中调用ActionInvocation的invoke方法就是调用下一个Interceptor 
     * 或者是调用action，然后要在Interceptor之前调用的内容都写在调用invoke之前，要在Interceptor之后调用的内容都写在调用invoke方法之后。 
     * 
     *  2.在调用控制器方法后，拦截（在生成视图之前）
     */  
    @Override  
    public void postHandle(HttpServletRequest request,  
            HttpServletResponse response, Object handler,  
            ModelAndView modelAndView) throws Exception {  
          
    }  
  
    /** 
     * 该方法也是需要当前对应的Interceptor的preHandle方法的返回值为true时才会执行。该方法将在整个请求完成之后，也就是DispatcherServlet渲染了视图执行， 
     * 这个方法的主要作用是用于清理资源的，当然这个方法也只能在当前这个Interceptor的preHandle方法的返回值为true时才会执行。 
     * 
     * 3.在视图生成之后（后台所有所有逻辑都完成后）
     */  
    @Override  
    public void afterCompletion(HttpServletRequest request,  
            HttpServletResponse response, Object handler, Exception ex)  
    throws Exception {  
          
    }  
      
}
