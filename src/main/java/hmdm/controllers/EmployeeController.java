package hmdm.controllers;

import hmdm.dto.Employee;
import hmdm.dto.EmployeeExample;
import hmdm.dto.SuggestInfo;
import hmdm.service.EmployeeService;
import hmdm.util.RSAUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.interfaces.RSAPrivateKey;
import java.util.List;

/**
 * Created by JoeHuang on 2017/8/14.
 */
@Controller
public class EmployeeController {

    @Autowired
    EmployeeService service;

    @RequestMapping("/employeeLogin")
    @ResponseBody
    public String employeeLogin(HttpServletResponse response,HttpServletRequest request, Employee employee, @RequestParam("validateCode") String veryCode) throws ServletException, IOException {
        String validateC = (String) request.getSession().getAttribute("validateCode");
        if(veryCode==null||"".equals(veryCode)){
            System.out.println("验证码为空");
            request.getRequestDispatcher("/veryCodeNull").forward(request,response);
        }else if(!validateC.toLowerCase().equals(veryCode.toLowerCase())){
            System.out.println("验证码错误");
            request.getRequestDispatcher("/veryCodeError").forward(request,response);
        }else{
            if(employee.getEmail()==null&&employee.getName()==null){
                return "Login employee name is null";
            }
            if(employee.getPassword()==null||employee.getPassword().equals("")){
                return "Password is null";
            }

            //解密password
            RSAPrivateKey privateKey = (RSAPrivateKey)request.getSession().getAttribute("privateKey");
            try {
                String descrypedPwd = RSAUtils.decryptByPrivateKey(employee.getPassword(), privateKey);
                employee.setPassword(descrypedPwd);
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println("解密后的employee密码："+employee.getPassword());
            EmployeeExample employeeExample = new EmployeeExample();
            EmployeeExample.Criteria criteria = employeeExample.createCriteria();
            if(employee.getName()!=null&&!employee.getName().equals("")){
                criteria.andNameEqualTo(employee.getName()).andPasswordEqualTo(employee.getPassword());
                List<Employee> employees = service.selectByExample(employeeExample);
                if(employees!=null&&employees.size()>0){
                    request.getSession().setAttribute("employee",employees.get(0));
                }else{
                    employeeExample.clear();
                    employeeExample.createCriteria().andPasswordEqualTo(employee.getPassword()).andEmailEqualTo(employee.getName());
                    employees = service.selectByExample(employeeExample);
                    if(employees!=null&&employees.size()>0){
                        request.getSession().setAttribute("employee",employees.get(0));
                    }else{
                        return "Username or password is wrong";
                    }
                }
            }
        }
        return "success";
    }

    public static boolean isLogin(HttpServletRequest request){
        Employee employee =  (Employee)request.getSession().getAttribute("employee");
        List<SuggestInfo> list = null;
        if(employee!=null&&employee.getEmployeeId()!=null){
            return true;
        }
        return false;
    }

}
