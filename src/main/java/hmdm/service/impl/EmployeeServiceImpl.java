package hmdm.service.impl;

import hmdm.dto.Employee;
import hmdm.dto.EmployeeExample;
import hmdm.mapper.EmployeeMapper;
import hmdm.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by JoeHuang on 2017/8/11.
 */
@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    EmployeeMapper mapper;

    @Override
    public long countByExample(EmployeeExample example) {
        return mapper.countByExample(example);
    }

    @Override
    public int deleteByExample(EmployeeExample example) {
        return mapper.deleteByExample(example);
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Employee record) {
        return mapper.insert(record);
    }

    @Override
    public int insertSelective(Employee record) {
        return mapper.insertSelective(record);
    }

    @Override
    public List<Employee> selectByExample(EmployeeExample example) {
        return mapper.selectByExample(example);
    }

    @Override
    public Employee selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByExampleSelective(Employee record, EmployeeExample example) {
        return mapper.updateByExampleSelective(record,example);
    }

    @Override
    public int updateByExample(Employee record, EmployeeExample example) {
        return mapper.updateByExample(record,example);
    }

    @Override
    public int updateByPrimaryKeySelective(Employee record) {
        return mapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Employee record) {
        return mapper.updateByPrimaryKey(record);
    }

    @Override
    public List<String> selectNameByFunctionId(Long functionId) {
        return mapper.selectNameByFunctionId(functionId);
    }
}
