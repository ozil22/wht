package com.huashidai.weihuotong.utils;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtil {
	private static SqlSessionFactory factory;
	static{
		try {
			Reader reader = Resources.getResourceAsReader("mybatis-spring.xml");
			SqlSessionFactoryBuilder bulider = new SqlSessionFactoryBuilder();
			factory = bulider.build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSession openSession(){
		return factory.openSession();
	}
}
