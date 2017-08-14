package hmdm.activiti;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.spring.ProcessEngineFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ZJ on 2017/8/9.
 */
public class SuggestActiviti {

    //获得流程引擎
    ProcessEngine processEngine = ProcessEngineConfiguration.createProcessEngineConfigurationFromResource("activiti.cfg.xml").buildProcessEngine();
    public ProcessEngineFactoryBean factoryBean;
    /**
     * 启动流程
     * 传入处理人集合
     * 返回流程id
     * @return
     */
    public String  startProcess(List<String> list){
        String processKey = "suggestId";//启动的流程id
        String users = "";
        //处理传入的处理人
        for(int i=0;i<list.size();i++){
            String user=list.get(i);
            users+=user;
            if(i<list.size()-1){
                users+=",";
            }
        }
        // 2 启动流程
        //启动流程实例，同时设置流程变量，用来指定组任务的办理人
        Map<String, Object> variables = new HashMap<String, Object>();
        variables.put("userId", users);

        ProcessInstance processInstance = processEngine.getRuntimeService()//
                .startProcessInstanceByKey(processKey,variables);
        String processInstanceId = processInstance.getId();
        //System.out.println("pid:" + processInstance.getId());//流程id
        return processInstanceId;
    }
}
