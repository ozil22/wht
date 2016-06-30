package test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.huashidai.weihuotong.domain.ProductOrder;
import com.huashidai.weihuotong.mapper.ProductOrderMapper;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class SystemLogTset {
	@Autowired
	private ProductOrderMapper productOrderMapper;
	
	@Test
	public void test() throws Exception {
		List<ProductOrder> byTotalOrderNum = productOrderMapper.getByTotalOrderNum("00627141535000068");
		System.out.println("==========================");
		for (ProductOrder productOrder : byTotalOrderNum) {
			System.out.println(productOrder.getId());
		}
		System.out.println("==========================");
	}
}
