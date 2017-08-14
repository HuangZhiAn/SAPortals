package hmdm.service;

import hmdm.dto.Employee;
import hmdm.dto.EmployeeExample;

import java.util.List;

/**
 * Created by JoeHuang on 2017/8/11.
 */
public interface EmployeeService extends IBaseService<Employee,EmployeeExample> {
    List<String> selectNameByFunctionId(Long functionId);
}
