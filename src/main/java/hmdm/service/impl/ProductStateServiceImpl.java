package hmdm.service.impl;

import hmdm.dto.ProductState;
import hmdm.dto.ProductStateExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import hmdm.mapper.ProductStateMapper;
import hmdm.service.ProductStateService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductStateServiceImpl implements ProductStateService{
	@Autowired
	private ProductStateMapper productStateMapper;

	public int countByExample(ProductStateExample example) {
		return  productStateMapper.countByExample(example);
	}

	public int deleteByExample(ProductStateExample example) {
		return productStateMapper.deleteByExample(example);
	}

	public int deleteByPrimaryKey(Integer stateId) {
		return  productStateMapper.deleteByPrimaryKey(stateId);
	}

	public int insert(ProductState record) {
		return productStateMapper.insert(record);
	}

	public int insertSelective(ProductState record) {
		return productStateMapper.insertSelective(record);
	}

	public List<ProductState> selectByExample(ProductStateExample example) {
		return productStateMapper.selectByExample(example);
	}

	public ProductState selectByPrimaryKey(Integer stateId) {
		return productStateMapper.selectByPrimaryKey(stateId);
	}

	public int updateByExampleSelective(@Param("record") ProductState record, @Param("example") ProductStateExample example) {
		return  productStateMapper.updateByExampleSelective(record,example);
	}

	public int updateByExample(@Param("record") ProductState record, @Param("example") ProductStateExample example) {
		return updateByExample(record,example);
	}

	public int updateByPrimaryKeySelective(ProductState record) {
		return  productStateMapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(ProductState record) {
		return productStateMapper.updateByPrimaryKey(record);
	}
}
