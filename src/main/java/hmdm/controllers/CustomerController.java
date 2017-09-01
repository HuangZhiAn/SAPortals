package hmdm.controllers;

import hmdm.dto.Customer;
import hmdm.dto.CustomerExample;
import hmdm.service.CustomerService;
import hmdm.service.IMailService;
import hmdm.service.UserRoleService;
import hmdm.util.RSAUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;

	@Autowired
	private IMailService mailService;

	@Autowired
	private UserRoleService userRoleService;

	char[] codeSequence = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
			'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
			'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };

	@RequestMapping(value = "/loginPage",method = RequestMethod.GET)
	public String hello(){
		return "/jsp/login";
	}

	@RequestMapping(value = "/loginSuccess",method = RequestMethod.POST)
	@ResponseBody
	public String loginSuccess(){
		return "success";
	}

	@RequestMapping(value = "/loginFailure",method = RequestMethod.POST)
	@ResponseBody
	public String loginFailure(){
		return "Username or password is wrong";
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
	@ResponseBody
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

    /**
     * 查询用户总人数
     * @return
     */
    @RequestMapping("/customer/counts")
    public @ResponseBody long getCustomerTotals(){
        long totals = customerService.countByExample(null);
        System.out.println(totals);
        return totals;
    }

	/**
	 * 用户注册方法
	 */
	@RequestMapping(value = "/customer/register",method = RequestMethod.POST)
	public @ResponseBody String register(HttpServletRequest request,Customer customer,String code,String re_password){
		if(customer.getName()==null||!customer.getName().matches("^[a-zA-Z]\\w{5,17}$")){
			return "username is null or illegal";
		}
		String usernameExist = usernameExist(customer.getName());
		if(usernameExist.equals("exist")){
			return "username is exist";
		}
		if(customer.getEmail()==null||!customer.getEmail().matches("^[A-Za-z0-9\\u4e00-\\u9fa5]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$")){
			return "email is null or illegal";
		}
		if(customer.getPassword()==null||!customer.getPassword().matches("^[a-zA-Z]\\w{5,17}$")){
			return "Password is null or illegal";
		}
		if(!customer.getPassword().equals(re_password)){
			return "Password different";
		}
		String registerCode1 =(String) request.getSession().getAttribute("registerCode");
		System.out.println("session code:"+registerCode1+" front code:"+code);
		if(code==null||code.equals("")||!code.equals(registerCode1)){
			return "register code is null or wrong";
		}
		int i= customerService.register(customer);
		if(i>0){
			return "success";
		}
		return "failure";
	}

	@RequestMapping(value = "/customer/sendRegisterEmail")
	@ResponseBody
	public String sendRegisterEmail(HttpServletRequest request,String email){
		if(email==null||!email.matches("^[A-Za-z0-9\\u4e00-\\u9fa5]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$")){
			return "email is null or illegal";
		}
		System.out.println("email:"+email);
		CustomerExample example = new CustomerExample();
		example.createCriteria().andNameEqualTo("emailSender");
		List<Customer> customers = customerService.selectByExample(example);
		if(customers==null||customers.size()==0){
			return "Can't find email sender";
		}
		String user = customers.get(0).getEmail();
		String password = customers.get(0).getPassword();
		mailService.initProperties("smtp","smtp.163.com","25",
				user,email);
		List<byte[]> list = new ArrayList<byte[]>();
		List filename = new ArrayList<String>();
		//String downloadUrl = "http://"+domainName+":"+port+"/download?productName="+productName+"&version="+version+"&customerId="+customer.getCustomerId()+"&downloadToken="+downloadToken;
		Random random = new Random();
		StringBuffer randomCode = new StringBuffer();
		for (int i = 0; i < 6; i++) {
			String strRand = String.valueOf(codeSequence[random.nextInt(36)]);
			randomCode.append(strRand);
		}
		String text = "欢迎注册HMDM，您的注册验证码是："+randomCode;
		HttpSession session = request.getSession();
		session.setAttribute("registerCode", randomCode.toString());
		try {
			mailService.sendMultipleEmail("注册验证码",text,list,"ccc",filename,user,password);
		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}
		return "success";
	}

	@RequestMapping(value = "/customer/usernameExist")
	@ResponseBody
	public String usernameExist(String username){
		CustomerExample example = new CustomerExample();
		example.createCriteria().andNameEqualTo(username);
		List<Customer> customers = customerService.selectByExample(example);
		if(customers!=null&&customers.size()>0&&customers.get(0).getName()!=null&&!customers.get(0).getName().equals("")){
			return "exist";
		}
		return "available";
	}

	@RequestMapping(value = "/customer/getPublicKey",method = RequestMethod.GET)
	@ResponseBody
	public RSAUtils.PublicKey getPublicKey(HttpServletRequest request){
		HashMap<String, Object> map = null;
		try {
			map = RSAUtils.getKeys();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		//生成公钥和私钥
		RSAPublicKey publicKey = (RSAPublicKey) map.get("public");
		RSAPrivateKey privateKey = (RSAPrivateKey) map.get("private");

		request.getSession().setAttribute("privateKey", privateKey);//私钥保存在session中，用于解密

		//公钥信息保存在页面，用于加密
		String publicKeyExponent = publicKey.getPublicExponent().toString(16);
		String publicKeyModulus = publicKey.getModulus().toString(16);
		RSAUtils.PublicKey publicKey1 = new RSAUtils.PublicKey();
		publicKey1.setPublicKeyExponent(publicKeyExponent);
		publicKey1.setPublicKeyModulus(publicKeyModulus);
		return publicKey1;
	}
}
