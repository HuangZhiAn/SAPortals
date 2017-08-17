package hmdm.activiti;

import hmdm.dto.SuggestTask;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.IdentityLink;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;
import org.activiti.spring.ProcessEngineFactoryBean;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
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
        variables.put("assignee",users);

        ProcessInstance processInstance = processEngine.getRuntimeService()//
                .startProcessInstanceByKey(processKey,variables);
        String processInstanceId = processInstance.getId();
        //System.out.println("pid:" + processInstance.getId());//流程id
        return processInstanceId;
    }

    /**
     * 传入用户名查询其所有的组任务列表
     * @param userName
     * @return
     */
    public  List<SuggestTask> queryGroupTask(String userName){
        //String userName = "zhoujie";
        List<Task> tasks = processEngine.getTaskService()
                .createTaskQuery()
                .taskCandidateUser(userName)
                .list();

        System.out.println("任务总数："+tasks.size());
        List<SuggestTask> list = new ArrayList<SuggestTask>();
        SuggestTask suggestTask;
        //将task内容设置到suggestTask
        for(Task task:tasks ){
            //获得suggestask类
            suggestTask = new SuggestTask();
            //设置属性
            suggestTask.setId(task.getId());
            suggestTask.setName(task.getName());
            suggestTask.setDescription(task.getDescription());
            suggestTask.setAssignee(task.getAssignee());
            suggestTask.setPriority(task.getPriority());
            suggestTask.setProcessInstanceId(task.getProcessInstanceId());
            suggestTask.setCreateTime(task.getCreateTime());
            suggestTask.setDelegationState(task.getDelegationState());
            suggestTask.setDueDate(task.getDueDate());
            suggestTask.setExecutionId(task.getExecutionId());
            suggestTask.setOwner(task.getOwner());
            suggestTask.setParentTaskId(task.getParentTaskId());
            suggestTask.setSuspended(task.isSuspended());
            suggestTask.setProcessVariables(task.getProcessVariables());
            suggestTask.setTaskDefinitionKey(task.getTaskDefinitionKey());

            List<IdentityLink> identityLinksForTask = processEngine.getTaskService().getIdentityLinksForTask(suggestTask.getId());
            String candidateUsers = "";
            for (IdentityLink i:identityLinksForTask) {
                candidateUsers += i.getUserId();
                candidateUsers += ",";
            }
            candidateUsers = candidateUsers.substring(0,candidateUsers.length()-1);
            suggestTask.setCandidateUsers(candidateUsers);
            //添加类到集合
            list.add(suggestTask);
        }
        return  list;
    }

    public String completeTask(String taskId){
        processEngine.getTaskService()//
                .complete(taskId);//
        System.out.println("完成任务"+taskId);
        return  taskId;
    }

    /**
     * 通过流程实例id拿到流程定义名称
     * @param processInstanceId
     * @return
     */
    public String getDefinitionName(String processInstanceId) {
        ProcessInstance processInstance = processEngine.getRuntimeService()
                .createProcessInstanceQuery()
                .processInstanceId(processInstanceId)
                .singleResult();
        ProcessDefinition processDefinition = processEngine.getRepositoryService()//与流程定义和部署对象相关的Service
                .createProcessDefinitionQuery()
                .processDefinitionId(processInstance.getProcessDefinitionId()).singleResult();//返回一个集合列表，封装流程定义
        return processDefinition.getName();
    }

    @Test
    public  void test1(){
        String id = "1719";
        System.out.println(getDefinitionName(id));
    }
}
