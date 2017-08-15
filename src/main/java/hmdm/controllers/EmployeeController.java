package hmdm.controllers;

import hmdm.dto.Employee;
import hmdm.dto.EmployeeExample;
import hmdm.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
}
