package com.huashidai.weihuotong.utils;

import java.lang.reflect.Method;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * 
 * 1:将JavaBean转换成Map<String,Object>、JSONObject 2:将Map<String,Object>转换成Javabean
 * 3:将JSONObject转换成Map<String,Object>、Javabean
 * 
 * @author Alexia
 */

public class JsonUtil {

	/**
	 * 将Javabean转换为Map<String,Object>
	 * 
	 * @param javaBean
	 *            javaBean
	 * @return Map<String,Object>对象
	 */
	public static Map<String, Object> toMap(Object javaBean) {

		Map<String, Object> result = new HashMap<String, Object>();
		Method[] methods = javaBean.getClass().getDeclaredMethods();

		for (Method method : methods) {

			try {

				if (method.getName().startsWith("get")) {

					String field = method.getName();
					field = field.substring(field.indexOf("get") + 3);
					field = field.toLowerCase().charAt(0) + field.substring(1);

					Object value = method.invoke(javaBean, (Object[]) null);
					result.put(field, null == value ? "" : value.toString());

				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		return result;

	}

	/**
	 * 将Json对象转换成Map<String,Object>
	 * 
	 * @param jsonObject
	 *            json对象
	 * @return Map<String,Object>对象
	 * @throws JSONException
	 */
	public static Map<String, Object> toMap(String jsonString)
			throws JSONException {
		JSONObject jsonObject = new JSONObject(jsonString);
		System.out.println(jsonString);
		Map<String, Object> result = new HashMap<String, Object>();
		Iterator<?> iterator = jsonObject.keys();
		String key = null;
		String value = null;

		while (iterator.hasNext()) {

			key = (String) iterator.next();
			value = jsonObject.getString(key);
			result.put(key, value);

		}
		return result;

	}

	/**
	 * 将JavaBean转换成JSONObject（通过Map<String,Object>中转）
	 * 
	 * @param bean
	 *            javaBean
	 * @return json对象
	 */
	public static JSONObject toJSON(Object bean) {

		return new JSONObject(toMap(bean));

	}
	/**
	 * 将JavaBean转换成JSON字符串（通过Map<String,Object>中转）
	 * 
	 * @param bean
	 *            javaBean
	 * @return json对象
	 */
	public static String toJSONString(Object bean) {
		
		return toJSON(bean).toString();
		
	}

	/**
	 * 将Map<String,Object>转换成Javabean
	 * 
	 * @param javabean
	 *            javaBean
	 * @param data
	 *            Map<String,Object>数据
	 */
	public static Object toJavaBean(Object javabean, Map<String, Object> data) {

		Method[] methods = javabean.getClass().getDeclaredMethods();
		for (Method method : methods) {

			try {
				if (method.getName().startsWith("set")) {

					String field = method.getName();
					field = field.substring(field.indexOf("set") + 3);
					field = field.toLowerCase().charAt(0) + field.substring(1);
					method.invoke(javabean, new Object[] {

					data.get(field)

					});

				}
			} catch (Exception e) {
			}

		}

		return javabean;

	}

	/**
	 * JSONObject到JavaBean
	 * 
	 * @param bean
	 *            javaBean
	 * @return json对象
	 * @throws ParseException
	 *             json解析异常
	 * @throws JSONException
	 */
	public static void toJavaBean(Object javabean, String jsonString)
			throws ParseException, JSONException {

		JSONObject jsonObject = new JSONObject(jsonString);

		Map<String, Object> map = toMap(jsonObject.toString());

		toJavaBean(javabean, map);

	}
}