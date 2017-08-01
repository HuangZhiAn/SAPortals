package hmdm.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

/**
 * Created by JoeHuang on 2017/8/1.
 */
public class ProductController {
    @RequestMapping("/download")
     public String downloadFile(@RequestParam("fileName") String fileName,
                                HttpServletRequest request, HttpServletResponse response) {
                 if (fileName != null) {
                         String realPath = request.getServletContext().getRealPath(
                                         "WEB-INF/File/");
                         File file = new File(realPath, fileName);
                        if (file.exists()) {
                                response.setContentType("application/force-download");// 设置强制下载不打开
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
                                         // TODO: handle exception
                                         e.printStackTrace();
                                     } finally {
                                         if (bis != null) {
                                                 try {
                                                         bis.close();
                                                     } catch (IOException e) {
                                                         // TODO Auto-generated catch block
                                                         e.printStackTrace();
                                                     }
                                             }
                                         if (fis != null) {
                                                 try {
                                                         fis.close();
                                                     } catch (IOException e) {
                                                         // TODO Auto-generated catch block
                                                         e.printStackTrace();
                                                     }
                                             }
                                     }
                             }
                     }
                 return null;
             }
}
