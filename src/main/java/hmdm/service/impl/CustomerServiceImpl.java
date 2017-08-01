package hmdm.service.impl;

import hmdm.dto.Customer;
import hmdm.dto.CustomerExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hmdm.mapper.CustomerMapper;
import hmdm.service.CustomerService;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	private CustomerMapper mapper;


	public int countByExample(CustomerExample example) {
		return mapper.countByExample(example);
	}

	public int deleteByExample(CustomerExample example) {
		return mapper.deleteByExample(example);
	}

	public int deleteByPrimaryKey(Long customerId) {
		return mapper.deleteByPrimaryKey(customerId);
	}

	public int insert(Customer record) {
		return mapper.insert(record);
	}

	public int insertSelective(Customer record) {
		return mapper.insertSelective(record);
	}

	public List<Customer> selectByExample(CustomerExample example) {
		return mapper.selectByExample(example);
	}

	public Customer selectByPrimaryKey(Long customerId) {
		return mapper.selectByPrimaryKey(customerId);
	}

	public int updateByExampleSelective(@Param("record") Customer record, @Param("example") CustomerExample example) {
		return mapper.updateByExampleSelective(record,example);
	}

	public int updateByExample(@Param("record") Customer record, @Param("example") CustomerExample example) {
		return mapper.updateByExample(record,example);
	}

	public int updateByPrimaryKeySelective(Customer record) {
		return mapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Customer record) {
		return mapper.updateByPrimaryKey(record);
	}
}
