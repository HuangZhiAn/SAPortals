package com.hza.filter;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by JoeHuang on 2017/7/7.
 */
public class UnauthorizedEntryPoint implements AuthenticationEntryPoint {
    public void commence(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {
        httpServletResponse.setHeader("Content-type", "text/html;charset=UTF-8");
        httpServletResponse.setCharacterEncoding("UTF-8");
        //BUG 浏览器还是显示500错误
        httpServletResponse.sendError(
                HttpServletResponse.SC_FORBIDDEN,
                e.getMessage());
    }
}
