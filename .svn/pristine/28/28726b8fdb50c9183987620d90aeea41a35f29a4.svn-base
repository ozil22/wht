package test;

import java.util.Arrays;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.huashidai.weihuotong.domain.Menu;
import com.huashidai.weihuotong.service.IMenuService;

@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration("classpath:applicationContext.xml")
public class MenuTest {

	@Autowired
	IMenuService menuService;
	
	@Test
	public void menu() throws Exception {
		System.out.println(menuService);
		Menu[] result = menuService.getMenuResult();
		System.out.println(Arrays.toString(result));
	}
	@Test
	public void test2() throws Exception {
		Menu menu = menuService.findRoles(2L);
		System.out.println(menu.getRoles().size());
	}
}
