package test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.huashidai.weihuotong.domain.Employee;
import com.huashidai.weihuotong.mapper.EmployeeMapper;

@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration("classpath:applicationContext.xml")
public class EmployeeTest {
	
	@Autowired
	EmployeeMapper employeeMapper;
	
	@Test
	public void get() throws Exception {
		System.out.println(employeeMapper.get(1L));
	}
	@Test
	public void delete() throws Exception {
		employeeMapper.delete(22L);
	}
	@Test
	public void update() throws Exception {
		Employee emp = new Employee();
		emp.setId(50L);
		emp.setUsername("小奶奶");
		employeeMapper.update(emp);
	}
	@Test
	public void insert() throws Exception {
		Employee emp = new Employee();
		emp.setUsername("小");
		emp.setPassword("admin");
		emp.setRealName("hh");
		System.out.println(emp);
		employeeMapper.save(emp);
	}
	
}
