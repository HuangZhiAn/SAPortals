package hmdm.dto;

import org.activiti.engine.task.DelegationState;
import org.activiti.engine.task.IdentityLink;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**工作流任务内容存放类
 * Created by 79378 on 2017/8/15.
 */
public class SuggestTask {

    private String id;

    private String name;

    private String description;

    private int priority;

    private String owner;

    private String assignee;

    private DelegationState delegationState;

    private String processInstanceId;

    private String executionId;

    private Date createTime;

    private String taskDefinitionKey;

    private Date dueDate;

    private String parentTaskId;

    private boolean isSuspended;

    private Map<String, Object> taskLocalVariables;

    private Map<String, Object> processVariables;

    private String candidateUsers;

    private String processDefineName;

    private Long customerId;

    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    public String getProcessDefineName() {
        return processDefineName;
    }

    public void setProcessDefineName(String processDefineName) {
        this.processDefineName = processDefineName;
    }

    public String getCandidateUsers() {
        return candidateUsers;
    }

    public void setCandidateUsers(String candidateUsers) {
        this.candidateUsers = candidateUsers;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getAssignee() {
        return assignee;
    }

    public void setAssignee(String assignee) {
        this.assignee = assignee;
    }

    public DelegationState getDelegationState() {
        return delegationState;
    }

    public void setDelegationState(DelegationState delegationState) {
        this.delegationState = delegationState;
    }

    public String getProcessInstanceId() {
        return processInstanceId;
    }

    public void setProcessInstanceId(String processInstanceId) {
        this.processInstanceId = processInstanceId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getTaskDefinitionKey() {
        return taskDefinitionKey;
    }

    public void setTaskDefinitionKey(String taskDefinitionKey) {
        this.taskDefinitionKey = taskDefinitionKey;
    }

    public Date getDueDate() {
        return dueDate;
    }

    public void setDueDate(Date dueDate) {
        this.dueDate = dueDate;
    }

    public String getParentTaskId() {
        return parentTaskId;
    }

    public void setParentTaskId(String parentTaskId) {
        this.parentTaskId = parentTaskId;
    }

    public boolean isSuspended() {
        return isSuspended;
    }

    public void setSuspended(boolean suspended) {
        isSuspended = suspended;
    }

    public Map<String, Object> getTaskLocalVariables() {
        return taskLocalVariables;
    }

    public void setTaskLocalVariables(Map<String, Object> taskLocalVariables) {
        this.taskLocalVariables = taskLocalVariables;
    }

    public Map<String, Object> getProcessVariables() {
        return processVariables;
    }

    public void setProcessVariables(Map<String, Object> processVariables) {
        this.processVariables = processVariables;
    }

    public String getExecutionId() {
        return executionId;
    }

    public void setExecutionId(String executionId) {
        this.executionId = executionId;
    }

    @Override
    public String toString() {
        return "SuggestTask{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", priority=" + priority +
                ", owner='" + owner + '\'' +
                ", assignee='" + assignee + '\'' +
                ", delegationState=" + delegationState +
                ", processInstanceId='" + processInstanceId + '\'' +
                ", executionId='" + executionId + '\'' +
                ", createTime=" + createTime +
                ", taskDefinitionKey='" + taskDefinitionKey + '\'' +
                ", dueDate=" + dueDate +
                ", parentTaskId='" + parentTaskId + '\'' +
                ", isSuspended=" + isSuspended +
                ", taskLocalVariables=" + taskLocalVariables +
                ", processVariables=" + processVariables +
                ", candidateUsers='" + candidateUsers + '\'' +
                ", processDefineName='" + processDefineName + '\'' +
                ", customerId='" + customerId + '\'' +
                '}';
    }
}
