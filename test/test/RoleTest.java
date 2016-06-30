package test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.huashidai.weihuotong.domain.Role;
import com.huashidai.weihuotong.service.IRoleService;

@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration("classpath:applicationContext.xml")
public class RoleTest {
	@Autowired
	IRoleService roleService;
	
	@Test
	public void test1() throws Exception {
		Role role = new Role();
		role.setName("小强");
		role.setSn("009");
		roleService.save(role);
		System.out.println(role.getId());
	}

}
