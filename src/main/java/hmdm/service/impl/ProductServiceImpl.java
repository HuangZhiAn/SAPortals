package hmdm.service.impl;

import hmdm.dto.Product;
import hmdm.dto.ProductExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import hmdm.mapper.ProductMapper;
import hmdm.service.ProductService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductMapper productMapper;

	public long countByExample(ProductExample example) {
		return productMapper.countByExample(example);
	}

	public int deleteByExample(ProductExample example) {
		return productMapper.deleteByExample(example);
	}

	public int deleteByPrimaryKey(Long productId) {
		return productMapper.deleteByPrimaryKey(productId);
	}

	public int insert(Product record) {
		return productMapper.insert(record);
	}

	public int insertSelective(Product record) {
		return productMapper.insertSelective(record);
	}

	public List<Product> selectByExample(ProductExample example) {
		return productMapper.selectByExample(example);
	}

	public Product selectByPrimaryKey(Long productId) {
		return productMapper.selectByPrimaryKey(productId);
	}

	public int updateByExampleSelective(@Param("record") Product record, @Param("example") ProductExample example) {
		return 0;
	}

	public int updateByExample(@Param("record") Product record, @Param("example") ProductExample example) {
		return productMapper.updateByExample(record,example);
	}

	public int updateByPrimaryKeySelective(Product record) {
		return productMapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Product record) {
		return productMapper.updateByPrimaryKey(record);
	}
}
