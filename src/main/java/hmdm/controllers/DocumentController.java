package hmdm.controllers;

import hmdm.dto.Customer;
import hmdm.dto.CustomerExample;
import hmdm.dto.Document;
import hmdm.service.CustomerService;
import hmdm.service.IDocumentService;
import hmdm.util.Word2Html2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.Iterator;
import java.util.List;

@Controller
public class DocumentController {

    @Autowired
    IDocumentService documentService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/word2html")
    @ResponseBody
    public String word2html(HttpServletRequest request, HttpServletResponse response){
        //获取文档转换apiKey
        CustomerExample example = new CustomerExample();
        example.createCriteria().andNameEqualTo("documenter");
        List<Customer> customers = customerService.selectByExample(example);
        String apiKey = "";
        if(customers!=null&&customers.size()!=0){
            apiKey = customers.get(0).getPassword();
        }

        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
                request.getSession().getServletContext());
        //判断form表单是否设置multipart/form-data
        if (multipartResolver.isMultipart(request)) {
            System.out.println("获取文件");
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            //获取文件名列表
            Iterator<String> iter = multiRequest.getFileNames();
            while (iter.hasNext()) {

                MultipartFile file = multiRequest.getFile(iter.next().toString());
                System.out.println("获取文件成功");
                String fileName = file.getOriginalFilename();
                InputStream in = null;
                try {
                    in = file.getInputStream();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                InputStream inputStream = null;
                try {
                    System.out.println("开始转换,文件名："+fileName);
                    inputStream = Word2Html2.word2htmlWithInputStream(in, fileName, "docx", "html",apiKey);
                    System.out.println("转换完成");
                } catch (URISyntaxException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                } catch (ParseException e) {
                    e.printStackTrace();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                String htmlFile = fileName.substring(0, fileName.lastIndexOf("."))
                        + ".html";
                System.out.println("下载的文件名："+htmlFile);
                response.setContentType("application/force-download");
                response.addHeader("Content-Disposition",
                        "attachment;fileName=" + htmlFile);// 设置文件名
                byte[] buffer = new byte[1024];
                FileInputStream fis = null;
                BufferedInputStream bis = null;
                try {
                    bis = new BufferedInputStream(inputStream);
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
                break;
            }

        }
        return "success";
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


    @RequestMapping(value="/document/all",method= RequestMethod.GET)
    public String readDocuments(HttpServletRequest  request,HttpServletResponse response){
        Document document = new Document();
        document.setDocumentParent(0);
        document.setEnable_flag('Y');

        List<Document> list = documentService.searchDocuments(document);
        request.setAttribute("documents", list);
        return "/jsp/documentationDiv";
    }


    @RequestMapping(value="manage",method=RequestMethod.GET)
    public String manageDocuments(HttpServletRequest  request,HttpServletResponse response){
        Document document = new Document();
        document.setDocumentParent(0);


        List<Document> list = documentService.searchDocuments(document);
        request.setAttribute("documents", list);
        return "/backstage/jsp/documentManage";
    }

    @RequestMapping(value="/ImageUpload",method=RequestMethod.POST)
    @ResponseBody
    public String imageUpload(HttpServletRequest  request){
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
                request.getSession().getServletContext());
        String url = null;
        //判断form表单是否设置multipart/form-data
        if (multipartResolver.isMultipart(request)) {
            System.out.println("获取图片");
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            //获取文件名列表
            Iterator<String> iter = multiRequest.getFileNames();

            while (iter.hasNext()) {
                MultipartFile file = multiRequest.getFile(iter.next().toString());
                System.out.println("获取图片成功");
                String fileName = file.getOriginalFilename();
                String appPath = request.getSession().getServletContext().getRealPath("");
                File newImage = new File(appPath+"/static/img/"+fileName);
                try {
                    file.transferTo(newImage);
                } catch (IOException e) {
                    e.printStackTrace();
                }
                url = request.getContextPath()+"/static/img/"+fileName;
            }

        }
        return url;
    }

    @RequestMapping(value="/pageEdit",method=RequestMethod.POST)
    @ResponseBody
    public String pageEdit(HttpServletRequest request,HttpServletResponse  response,String pagePath,String html){
        System.out.println("pagePath:"+pagePath);
        System.out.println("html:"+html);

        String appPath = request.getSession().getServletContext().getRealPath("");

        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(appPath+"/"+pagePath);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        try {
            fos.write(html.getBytes());
            fos.close();
            //重定向到已修改的页面
            response.sendRedirect(request.getContextPath()+"/"+pagePath);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "success";
    }


}
