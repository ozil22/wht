package test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.huashidai.weihuotong.domain.Store;
import com.huashidai.weihuotong.mapper.StoreMapper;

@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration("classpath:applicationContext.xml")
public class StoreTest {
	
	@Autowired
	StoreMapper storeMapper;
	
	@Test
	public void testName() throws Exception {
		Store store = new Store();
		store.setName("hh");
		storeMapper.save(store );
	}
}
