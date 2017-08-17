package hmdm.activiti;

import hmdm.dto.SuggestTask;
import org.activiti.engine.*;
import org.activiti.engine.impl.identity.Authentication;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Comment;
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

    /**
     * 任务审批
     * @param taskId  正在执行的任务id
     * @param userName 审批人
     * @param message 审批的意见
     * @return 审批完成的任务id
     */
    public String completeTask(String taskId,String userName,String message){
        TaskService taskService = processEngine.getTaskService();
        //3. 使用任务服务完成任务(提交任务)
        //使用任务id,获取任务对象，获取流程实例id
        Task task=taskService.createTaskQuery().taskId(taskId).singleResult();
        //利用任务对象，获取流程实例id
        String processInstancesId=task.getProcessInstanceId();

        //System.out.println(processInstancesId);
        Authentication.setAuthenticatedUserId(userName); //添加批注时候的审核人

        taskService.addComment(taskId,processInstancesId,message);

        taskService.complete(taskId);

        return taskId;
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

    /**
     * 实现审批任务转交
     * 传入当前任务id，当前审批人，转交的人
     * @param taskId 当前任务id
     * @param userName 当前审批人
     * @param newName  转交的人
     * @return 返回转交后的审批name
     */
    public String test2(String taskId,String userName,String newName){
       /*String taskId="1405";
       String userName="123";
       String newName="zhoujie";*/
        processEngine.getTaskService().deleteCandidateUser(taskId, userName);
        processEngine.getTaskService().addCandidateUser(taskId, newName);
        return newName;
    }
    /**
     * 传入proIntancId集合查询Comments
     * 返回 Coments集合的list
     * @param proIntancIds
     * @return
     */
    public List findCommentsList(List<String> proIntancIds) {
        HistoryService historyService = processEngine.getHistoryService();
        TaskService taskService = processEngine.getTaskService();
        List list = new ArrayList();
        for (String processInstanceId : proIntancIds) {
            //若不是正在执行的流程
            if (notRun(processInstanceId)) {
                List<Comment> coms = taskService.getProcessInstanceComments(processInstanceId);
                list.add(coms);
            }
        }
        return list;
    }

    /**
     * 传入流程id查询对应的审批记录集合
     * @param processInstanceId
     * @return
     */
    public List<Comment> findComments(String processInstanceId) {
        HistoryService historyService = processEngine.getHistoryService();
        TaskService taskService = processEngine.getTaskService();
        List list = new ArrayList();
        //若不是正在执行的流程
        if (notRun(processInstanceId)) {
            List<Comment>  coms = taskService.getProcessInstanceComments(processInstanceId);
            return coms;
        }else{
            return null;
        }
    }

    /**
     * 传入流程实例id判断是否结束执行
     * @param processInstanceId
     * @return
     */
    private  boolean notRun(String processInstanceId){
        /**判断流程是否结束，查询正在执行的执行对象表*/
        ProcessInstance processRun = processEngine.getRuntimeService()//
                .createProcessInstanceQuery()//创建流程实例查询对象
                .processInstanceId(processInstanceId)
                .singleResult();
        if(processRun == null){
            return  true;
        }else{
            return false;
        }
    }

    @Test
    public void test3(){
        String pid = "1001";
        findComments(pid);

    }
}
