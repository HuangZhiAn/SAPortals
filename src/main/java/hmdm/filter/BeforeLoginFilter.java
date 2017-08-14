package hmdm.filter;

import org.springframework.web.filter.GenericFilterBean;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by JoeHuang on 2017/8/9.
 */
public class BeforeLoginFilter  extends GenericFilterBean {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletResponse res = (HttpServletResponse) response;
        //res.setHeader("Access-Control-Allow-Origin", "*");
        HttpServletRequest req = (HttpServletRequest) request;
        StringBuffer pathInfo = req.getRequestURL();
        if(pathInfo.toString().endsWith("/login")&&request.getParameter("logout")==null&&request.getParameter("error")==null){
            System.out.println("登录前过滤器");
            String validateC = (String) req.getSession().getAttribute("validateCode");
            String veryCode = request.getParameter("validateCode");
            if(veryCode==null||"".equals(veryCode)){
                System.out.println("验证码为空");
                request.getRequestDispatcher("/veryCodeNull").forward(request,response);
            }else if(!validateC.equals(veryCode)){
                System.out.println("验证码错误");
                request.getRequestDispatcher("/veryCodeError").forward(request,response);
            }else{
                chain.doFilter(request,response);
            }
        }else{
            chain.doFilter(request,response);
        }
    }
}
