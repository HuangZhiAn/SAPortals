package hmdm.controllers;

import hmdm.dto.Customer;
import hmdm.service.IMailService;
import hmdm.util.SpringContextUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by JoeHuang on 2017/8/1.
 */
@RestController
public class ProductController {

    @Autowired
    IMailService mailService;

    @RequestMapping("/sendDownloadEmail")
    public String sendDownloadEmail(@RequestParam("fileName") String fileName, HttpServletRequest request){
        HttpSession session = request.getSession();
        Customer customer =(Customer) session.getAttribute("customer");
        mailService.initProperties("smtp","smtp.163.com","25",
                "s872007871@163.com",customer.getEmail());

        String downloadToken = new Date().getTime()+"";
        request.getServletContext().setAttribute(downloadToken,downloadToken);
        List<byte[]> list = new ArrayList<byte[]>();
        List filename = new ArrayList<String>();
        try {
            mailService.sendMultipleEmail("产品下载","http://10.211.98.5:8080/download?fileName="+fileName+"&downloadToken="+downloadToken,list,"ccc",filename,"s872007871@163.com","gfhbmddijxnrfxov");
        } catch (Exception e) {
            e.printStackTrace();
            return "fail";
        }
        return "success";
    }

    @RequestMapping("/download")
    public String downloadFile(@RequestParam("fileName") String fileName,
                               @RequestParam("downloadToken") String downloadToken,
                               HttpServletRequest request, HttpServletResponse response) {
        String downloadToken1 =(String) request.getServletContext().getAttribute(downloadToken);
        if (fileName != null&&downloadToken1!=null&&!downloadToken1.equals("")) {
            request.getServletContext().setAttribute(downloadToken,null);
            String realPath = request.getServletContext().getRealPath("WEB-INF/products/");
            File file = new File(realPath, fileName);
            if (file.exists()) {
                response.setContentType("application/force-download");
                response.addHeader("Content-Disposition",
                        "attachment;fileName=" + fileName);// 设置文件名
                byte[] buffer = new byte[1024];
                FileInputStream fis = null;
                BufferedInputStream bis = null;
                try {
                    fis = new FileInputStream(file);
                    bis = new BufferedInputStream(fis);
                    OutputStream os = response.getOutputStream();
                    int i = bis.read(buffer);
                    while (i != -1) {
                        os.write(buffer, 0, i);
                        i = bis.read(buffer);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    close(bis);
                    close(fis);
                }
            }
        }

        return "Link Failure";
    }

    private void close(InputStream in){
        if (in != null) {
            try {
                in.close();
            } catch (IOException e) {
                e.printStackTrace();
                in=null;
            }
        }
    }
}
