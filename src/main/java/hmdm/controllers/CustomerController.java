package hmdm.controllers;

import hmdm.dto.Customer;
import hmdm.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	@RequestMapping("/hello")
	public String hello(){
		return "hello hmdm portals";
	}

	//查询customer列表
	@RequestMapping("/customer/query")
	public void queryCustomer(){
		System.out.println("查询customer测试");
		List<Customer> list  = customerService.selectByExample(null);
		for(Customer c:list){
			System.out.println(c.getName()+c.getCustomerId()+c.getEmail()+c.getPassword());
		}
	}
	//添加customer
	@RequestMapping("/customer/insert")
	public void insertCustomer(Customer customer){
		System.out.println("添加customer");
		customer.setName("test3");
		customer.setEmail("jie.zhou03@hana.com");
		customer.setPassword("123456");
		int id = customerService.insertSelective(customer);
		System.out.println("添加的数目:"+id);
	}

	//修改customer
	@RequestMapping("/customer/update")
	public void updateCustomer(Customer customer){
		System.out.println("修改customer");
		customer.setCustomerId(1001L);
		customer.setName("zhoujie");
		customer.setPassword("123456");
		int id = customerService.updateByPrimaryKeySelective(customer);
		System.out.println("修改的数目:"+id);
	}
	//删除customer
	@RequestMapping("/customer/delete")
	public void deleteCustomer(Long customerid){
		System.out.println("删除customer");
		customerid = 1002L;
		int id = customerService.deleteByPrimaryKey(customerid);
		System.out.println("删除的customerid:"+id);
	}

}
