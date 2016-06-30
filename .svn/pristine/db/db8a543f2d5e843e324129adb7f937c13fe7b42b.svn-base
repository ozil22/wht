package test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.huashidai.weihuotong.domain.Product;
import com.huashidai.weihuotong.mapper.ProductMapper;

@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration("classpath:applicationContext.xml")
public class ProductTest {
	
	@Autowired
	ProductMapper productMapper;
	
	@Test
	public void testName() throws Exception {
		Product product = productMapper.get(1l);
		System.out.println(product);
	}
	
}
