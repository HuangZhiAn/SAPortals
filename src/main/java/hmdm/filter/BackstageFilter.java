package hmdm.filter;

import hmdm.dto.Employee;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by JoeHuang on 2017/8/21.
 */
public class BackstageFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        StringBuffer pathInfo = req.getRequestURL();
        if(pathInfo.toString().contains("/backstage")&&!pathInfo.toString().contains("login")){
            Employee employee = (Employee) req.getSession().getAttribute("employee");
            if(employee==null||employee.getEmployeeId()==null){
                httpServletResponse.sendRedirect("/backstage/jsp/login.jsp");
                return;
            }
        }
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
