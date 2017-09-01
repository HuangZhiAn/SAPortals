package hmdm.filter;

import hmdm.util.ParameterRequestWrapper;
import hmdm.util.RSAUtils;
import org.springframework.web.filter.GenericFilterBean;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.interfaces.RSAPrivateKey;

/**
 * Created by JoeHuang on 2017/8/9.
 */
public class BeforeLoginFilter  extends GenericFilterBean {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletResponse res = (HttpServletResponse) response;
        HttpServletRequest req = (HttpServletRequest) request;

        StringBuffer pathInfo = req.getRequestURL();
        if(pathInfo.toString().endsWith("/login")&&request.getParameter("logout")==null&&request.getParameter("error")==null){
            System.out.println("登录前过滤器");

            //解密password
            String password = request.getParameter("password");
            if(password!=null&&!password.trim().equals("")){
                RSAPrivateKey privateKey = (RSAPrivateKey)req.getSession().getAttribute("privateKey");
                try {
                    String descrypedPwd = RSAUtils.decryptByPrivateKey(password, privateKey);
                    System.out.println("解密后的密码"+descrypedPwd);
                    ParameterRequestWrapper requestWrapper = new ParameterRequestWrapper(req);
                    requestWrapper.addParameter("password",descrypedPwd);
                    request = requestWrapper;
                } catch (Exception e) {
                    e.printStackTrace();
                }

            }

            String validateC = (String) req.getSession().getAttribute("validateCode");
            String veryCode = request.getParameter("validateCode");
            if(veryCode==null||"".equals(veryCode)){
                System.out.println("验证码为空");
                request.getRequestDispatcher("/veryCodeNull").forward(request,response);
            }else if(!validateC.toLowerCase().equals(veryCode.toLowerCase())){
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
