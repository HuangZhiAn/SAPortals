package hmdm.activiti;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.repository.Deployment;

/**
 * Created by PC on 2017/8/9.
 */
public class DeployProcess {
    /**
     * 部署流程static块
     */
    /*static {
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
        System.out.println(processEngine);
        Deployment deployment = processEngine.getRepositoryService()//与流程定义和部署对象相关的Service
                    .createDeployment()//创建一个部署对象
                    .name("部署suggest流程")//添加部署的名称
                    .addClasspathResource("activiti/suggestId.bpmn20.xml")//从classpath的资源中加载，一次只能加载一个文件
                    .deploy();//完成部署
    }*/

}
