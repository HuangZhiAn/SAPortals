package hmdm.service.impl;

import hmdm.dto.Customer;
import hmdm.dto.CustomerExample;
import hmdm.dto.UserRole;
import hmdm.mapper.UserRoleMapper;
import hmdm.util.Encoder;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hmdm.mapper.CustomerMapper;
import hmdm.service.CustomerService;

import java.security.NoSuchAlgorithmException;
import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	private CustomerMapper mapper;

	@Autowired
	private UserRoleMapper userRoleMapper;

	public long countByExample(CustomerExample example) {
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

	@Override
	public int register(Customer record) {
		try {
			record.setPassword(Encoder.EncoderByMD5(record.getPassword()));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		if(mapper.insertSelective(record)>0){
			CustomerExample example = new CustomerExample();
			example.createCriteria().andNameEqualTo(record.getName());
			List<Customer> customers = mapper.selectByExample(example);
			if(customers!=null&&customers.size()>0&&customers.get(0).getCustomerId()!=null){
				UserRole userRole = new UserRole();
				userRole.setRoleId(1);
				userRole.setUserId(customers.get(0).getCustomerId());
				int i = userRoleMapper.insertSelective(userRole);
				if(i>0){
					return i;
				}
			}
		}
		return 0;
	}
}
