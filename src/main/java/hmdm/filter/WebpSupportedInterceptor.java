package hmdm.filter;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;

/**
 * Created by JoeHuang on 2017/9/1.
 */
public class WebpSupportedInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        httpServletResponse.setHeader("Cache-Control","max-age="+60*60);
        //判断浏览器是否支持webp
        String accept = httpServletRequest.getHeader("Accept");
        if(!accept.toLowerCase().contains("webp")){
            String image = httpServletRequest.getRequestURI().replace("/webp","").replace(".webp",".png");
            String appPath = httpServletRequest.getSession().getServletContext().getRealPath("");
            File file = new File(appPath+httpServletRequest.getContextPath()+image);
            if(!file.exists()){
                image = image.replace(".png",".jpg");
            }
            httpServletRequest.getRequestDispatcher(image).forward(httpServletRequest,httpServletResponse);
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
