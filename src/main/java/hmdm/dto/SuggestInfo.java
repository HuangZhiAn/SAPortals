package hmdm.dto;

import java.util.List;

public class SuggestInfo {

    private Long suggestId;

    private Long functionId;

    private String suggestInfo;

    private String suggestFile;

    private String processInstanceId;

    private Long customerId;

    private Customer customer;

    private List<SuggestImages> images;//一对多集合类型

    public List<SuggestImages> getImages(){
        return this.images;
    }

    public void setImages(List<SuggestImages> images){
        this.images = images;
    }

    public Long getSuggestId() {
        return suggestId;
    }

    public void setSuggestId(Long suggestId) {
        this.suggestId = suggestId;
    }

    public Long getFunctionId() {
        return functionId;
    }

    public void setFunctionId(Long functionId) {
        this.functionId = functionId;
    }

    public String getSuggestInfo() {
        return suggestInfo;
    }

    public void setSuggestInfo(String suggestInfo) {
        this.suggestInfo = suggestInfo;
    }

    public String getSuggestFile() {
        return suggestFile;
    }

    public void setSuggestFile(String suggestFile) {
        this.suggestFile = suggestFile;
    }

    public String getProcessInstanceId() {
        return processInstanceId;
    }

    public void setProcessInstanceId(String processInstanceId) {
        this.processInstanceId = processInstanceId;
    }

    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @Override
    public String toString() {
        return "SuggestInfo{" +
                "suggestId=" + suggestId +
                ", functionId=" + functionId +
                ", suggestInfo='" + suggestInfo + '\'' +
                ", suggestFile='" + suggestFile + '\'' +
                ", processInstanceId='" + processInstanceId + '\'' +
                ", customerId=" + customerId +
                ", customer=" + customer +
                ", images=" + images +
                '}';
    }
}