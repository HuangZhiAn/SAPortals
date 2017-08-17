package hmdm.common;

import java.io.Serializable;
import java.util.List;

//应答数据类
public class ResponseData<T> implements Serializable{
	public static final String RESULT_SUCCESS = "success";
	public static final String RESULT_FAILED = "failed";
	
	// 符合条件的总记录数
	private int total;
	// 返回数据
	private T data;
	private String msg;
	public ResponseData() {
	}
	public ResponseData(int total, T data) {
		this.total = total;
		this.data = data;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
	public void setList(T data) {
		this.data = data;
		List<Object> list = (List<Object>) data;
		if(list != null){
			total = list.size();
		}
	}
	


	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	@Override
	public String toString() {
		return "ResponseData [total=" + total + ", data=" + data + "]";
	}
}