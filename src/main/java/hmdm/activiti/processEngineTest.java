package hmdm.activiti;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.repository.Deployment;
import org.junit.Test;

import java.io.IOException;
import java.net.URL;
import java.util.Enumeration;

/**
 * Created by JoeHuang on 2017/8/11.
 */
public class processEngineTest {

    //@Test
    public void getProcessEngine(){

        //获得流程引擎
//        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
//        System.out.println(processEngine);
//        try {
//            Enumeration<URL> resources = this.getClass().getClassLoader().getResources("application-activiti.cfg.xml");
//            System.out.println(resources);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
        ProcessEngine processEngine = ProcessEngineConfiguration.createProcessEngineConfigurationFromResource("activiti.cfg.xml").buildProcessEngine();

        Deployment deployment = processEngine.getRepositoryService()//与流程定义和部署对象相关的Service
                .createDeployment()//创建一个部署对象
                .name("部署suggest流程")//添加部署的名称
                .addClasspathResource("activiti/suggestId.bpmn20.xml")//从classpath的资源中加载，一次只能加载一个文件
                .deploy();//完成部署
    }
}
