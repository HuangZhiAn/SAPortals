package hmdm.controllers;

import hmdm.dto.Customer;
import hmdm.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;

	@RequestMapping(value = "/loginPage",method = RequestMethod.GET)
	public String hello(){
		return "login";
	}

	@RequestMapping(value = "/loginSuccess",method = RequestMethod.POST)
	@ResponseBody
	public String loginSuccess(){
		return "success";
	}

	@RequestMapping(value = "/loginFailure",method = RequestMethod.POST)
	@ResponseBody
	public String loginFailure(){
		return "failure";
	}

	@RequestMapping(value = "/veryCodeError",method = RequestMethod.POST)
	@ResponseBody
	public String veryCodeError(){
		return "veryCodeError";
	}

	@RequestMapping(value = "/veryCodeNull",method = RequestMethod.POST)
	@ResponseBody
	public String veryCodeNull(){
		return "veryCodeNull";
	}

	@RequestMapping(value = "/loginCheck",method = RequestMethod.GET)
	@ResponseBody
	public String loginState(HttpServletRequest request){
        Customer customer =(Customer) request.getSession().getAttribute("customer");
        if(customer==null||customer.getCustomerId()==null||customer.getCustomerId().equals("")){
            return "notLogin";
        }
        return "login";
	}

	@RequestMapping("/customer/query")
	public List<Customer> queryCustomer(){
		System.out.println("查询customer测试");
		List<Customer> list  = customerService.selectByExample(null);
		for(Customer c:list){
			System.out.println(c.getName()+c.getCustomerId()+c.getEmail()+c.getPassword());
		}
		return list;
	}

	@RequestMapping("/customer/insert")
	public void insertCustomer(Customer customer){
		System.out.println("添加customer");
		customer.setName("test3");
		customer.setEmail("jie.zhou03@hana.com");
		customer.setPassword("123456");
		int id = customerService.insertSelective(customer);
		System.out.println("添加的数目:"+id);
	}

	@RequestMapping("/customer/update")
	public void updateCustomer(Customer customer){
		System.out.println("修改customer");
		customer.setCustomerId(1001L);
		customer.setName("zhoujie");
		customer.setPassword("123456");
		int id = customerService.updateByPrimaryKeySelective(customer);
		System.out.println("修改的数目:"+id);
	}

	@RequestMapping("/customer/delete")
	public void deleteCustomer(Long customerid){
		System.out.println("删除customer");
		customerid = 1002L;
		int id = customerService.deleteByPrimaryKey(customerid);
		System.out.println("删除的customerid:"+id);
	}

}
