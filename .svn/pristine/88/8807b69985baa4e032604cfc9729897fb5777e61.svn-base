package com.huashidai.weihuotong.system;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import com.huashidai.weihuotong.domain.Permission;
import com.huashidai.weihuotong.domain.Resource;
import com.huashidai.weihuotong.mapper.PermissionMapper;
import com.huashidai.weihuotong.mapper.ResourceMapper;

@Component
public class ResourceScaner implements
		ApplicationListener<ContextRefreshedEvent> {
	@Autowired
	private ResourceMapper resourceMapper;
	@Autowired
	private PermissionMapper permissionMapper;

	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {
		System.out.println("------初始化执行----");
		// 创建两个集合以便于批量持久化资源和权限对象
		List<Resource> resources = new ArrayList<>();
		List<Permission> permissions = new ArrayList<>();
		try {
			// 获取上下文
			ApplicationContext context = event.getApplicationContext();
			// 获取所有beanNames
			String[] beanNames = context.getBeanNamesForType(Object.class);
			
			for (String beanName : beanNames) {
				// 获取所有类的Controller注解
				Controller controller = context.findAnnotationOnBean(beanName,
						Controller.class);
				// 如果有有Controller注解
				if (controller != null) {
					// 获取这个类的字节码
					Class<? extends Object> beanClass = context.getBean(
							beanName).getClass();
					// 获取这个类的全限定名
					String className = beanClass.getName();
					//定义该类的所有权限类别
					String type = "";
					// 获取这个类的所有方法
					Method[] methods = beanClass.getDeclaredMethods();
					for (Method method : methods) {
						// 获取方法名
						String methodName = method.getName();
						// 拼接要保存的资源的name
						String resourceName = className + ":" + methodName;
						// 创建Resource对象并设置值
						Resource resource = new Resource(resourceName);
						// 把Resource对象添加到集合中添加到集合中
						resources.add(resource);

						// 判断该方法是否有MethodAnnotation注解
						if (method.isAnnotationPresent(MethodAnnotation.class)) {
							// 得到注解
							MethodAnnotation MethodAnnotation = method
									.getAnnotation(MethodAnnotation.class);
							// 获取注解上的值
							String name = MethodAnnotation.name();
							type = MethodAnnotation.type().name();
							// 创建Permission对象并设置值
							Permission permission = new Permission(name, type, resourceName);
							// 添加到集合中
							permissions.add(permission);
						}
					}
					if (StringUtils.isNotBlank(type)) {
						// 拼接一个该类全部权限 的资源名
						String allName = className + ":" + "ALL";
						// 创建Resource对象并设置值
						Resource resourceAll = new Resource(allName);
						Permission permissionAll = new Permission("全部", type, allName);
						// 把Resource对象添加到集合中添加到集合中
						resources.add(resourceAll);
						permissions.add(permissionAll);
					}
				}
				
			}
			if (!permissions.isEmpty()) {
				resourceMapper.saveAll(resources);
				permissionMapper.saveAll(permissions);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}