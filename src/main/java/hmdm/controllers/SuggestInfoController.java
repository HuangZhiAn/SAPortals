package hmdm.controllers;

import hmdm.dto.Customer;
import hmdm.dto.Employee;
import hmdm.dto.SuggestImages;
import hmdm.dto.SuggestInfo;
import hmdm.service.EmployeeService;
import hmdm.service.ProductService;
import hmdm.service.SuggestImagesService;
import hmdm.service.SuggestInfoService;
import hmdm.activiti.SuggestActiviti;
import hmdm.util.Word2Html2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by PC on 2017/8/9.
 */
@Controller
public class SuggestInfoController {
    @Autowired
    private SuggestInfoService suggestInfoService;
    @Autowired
    private SuggestActiviti suggestActiviti;

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private SuggestImagesService suggestImagesService;
    /**
     * 用户反馈方法
     * 传入SuggestInfo suggestInfo
     * @param suggestInfo
     */
    @RequestMapping("/suggestInfo/suggest")
    public @ResponseBody String suggest(SuggestInfo suggestInfo){
        //根据functionid查询处理的人
        //模拟数据
        List<String> list = new ArrayList<String>();
        list.add("1001");
        list.add("1002");
        list.add("1003");
        list.add("1004");

        suggestInfo.setFunctionId(1L);
        //suggestInfo.s;
        suggestInfo.setSuggestInfo("hmdm使用删除有问题");
        //发布流程
        String instanceId = suggestActiviti.startProcess(list);
        //设置流程id
        suggestInfo.setProcessInstanceId(instanceId);
        int i = suggestInfoService.insertSelective(suggestInfo);
        if(i > 0){
            return "提交成功！";
        }else{
            return "提交失败";
        }
    }

    @RequestMapping("/suggestInfo/insert")
    @ResponseBody
    public String insertTest(){
        SuggestInfo suggestInfo = new SuggestInfo();
        suggestInfo.setCustomerId(1003L);
        suggestInfo.setProcessInstanceId("701");
        suggestInfo.setSuggestInfo("测试");
        suggestInfo.setFunctionId(1L);
        int i = suggestInfoService.insert(suggestInfo);
        System.out.println("insert result"+i);
        return i+"";
    }
    
    @RequestMapping("/suggestInfo/uploadTest")
    @ResponseBody
    public String uploadTest(@RequestParam("files") MultipartFile[] files, HttpServletRequest request){
        return files.length+"";
    }
    

    @RequestMapping("/suggestInfo/Submit")
    @ResponseBody
    public String suggestionSubmit(@RequestParam("files") MultipartFile[] files,HttpServletRequest request, HttpServletResponse response,SuggestInfo suggestInfo){
        //实例化流程
        List<String> names = employeeService.selectNameByFunctionId(suggestInfo.getFunctionId());
        String instanceId = suggestActiviti.startProcess(names);

        suggestInfo.setProcessInstanceId(instanceId);
        Customer customer =(Customer) request.getSession().getAttribute("customer");
        suggestInfo.setCustomerId(customer.getCustomerId());

        System.out.println("customer: "+customer);
        System.out.println("suggestInfo: "+suggestInfo);
        //将反馈信息存到数据库
        int i = suggestInfoService.insertSelective(suggestInfo);

        if(i<1){
            System.out.println("suggestInfo插入失败");
        }
        //获取反馈信息的ID
        Long suggestId = suggestInfoService.lastInsertId();
        System.out.println("反馈ID"+suggestId);
        System.out.println("获取文件");

        //获取文件名列表
        System.out.println("文件数量："+files.length);
        List<String> filePaths = new ArrayList<String>();
        for (int n = 0;n<files.length;n++) {
            System.out.println("获取文件成功");
            String fileName = files[n].getOriginalFilename();

            String appPath = request.getSession().getServletContext().getRealPath("");
            String imagePath =appPath+"/images/suggestInfo/"; //Thread.currentThread().getContextClassLoader().getResource("/").getPath();

            System.out.println("imagePath:"+imagePath+ " appPath:"+appPath);
            //图片路径
            filePaths.add("/images/suggestInfo/"+fileName);
            try {
                files[n].transferTo(new File(imagePath+fileName));
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
        //将图片信息存到数据库
        SuggestImages suggestImages = new SuggestImages();
        suggestImages.setSuggestId(suggestId);
        int i1 = suggestImagesService.insertSelective(suggestImages, filePaths);
        if(i1<1){
            System.out.println("suggestImages插入失败");
        }
        return "success";
    }

    @RequestMapping("/suggest/querySuggest")
    public @ResponseBody
    List<SuggestInfo> querySuggest(HttpServletRequest request,HttpServletResponse response) throws IOException {

        //获得functionId
        Employee employee =  (Employee)request.getSession().getAttribute("employee");
        if(employee==null||employee.getFunctionId()==null){
            response.sendRedirect("/backstage/jsp/login.jsp");
        }
        //查询对应的suggestInfo
        List<SuggestInfo> list = suggestInfoService.selectSuggest(employee.getFunctionId());
        return list;
    }


}
