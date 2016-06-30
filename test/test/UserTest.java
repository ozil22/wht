package test;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.huashidai.weihuotong.mapper.UserMapper;
import com.huashidai.weihuotong.service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration("classpath:applicationContext.xml")
public class UserTest {
	
	@Autowired
	UserMapper UserMapper;
	@Autowired
	IUserService UserService;
	
	
}

