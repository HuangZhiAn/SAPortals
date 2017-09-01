package hmdm.filter;

import hmdm.dto.Customer;
import hmdm.dto.CustomerExample;
import hmdm.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.filter.GenericFilterBean;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * Created by JoeHuang on 2017/8/2.
 */
public class LoginFilter extends GenericFilterBean {

    @Autowired
    CustomerService service;

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest=  (HttpServletRequest) request;
        //将customer添加到session
        Object customer = httpServletRequest.getSession().getAttribute("customer");
        if(customer==null){
            SecurityContext context = SecurityContextHolder.getContext();
            Authentication authentication = context.getAuthentication();
            if(authentication!=null) {
                User details = (User) authentication.getPrincipal();

                if (details.getUsername() != null && !details.getUsername().equals("")) {

                    CustomerExample example = new CustomerExample();
                    example.createCriteria().andNameEqualTo(details.getUsername());
                    List<Customer> customers = service.selectByExample(example);
                    if (customers != null && customers.size() != 0) {
                        httpServletRequest.getSession().setAttribute("customer", customers.get(0));
                        httpServletRequest.getSession().setAttribute("validateCode",null);
                    }
                }
            }
        }
        chain.doFilter(request, response);
    }
}
