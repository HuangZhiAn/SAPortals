package hmdm.mapper;

import hmdm.dto.Product;
import hmdm.dto.ProductExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ProductMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	long countByExample(ProductExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int deleteByExample(ProductExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int deleteByPrimaryKey(Long productId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int insert(Product record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int insertSelective(Product record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	List<Product> selectByExample(ProductExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	Product selectByPrimaryKey(Long productId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int updateByExampleSelective(@Param("record") Product record, @Param("example") ProductExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int updateByExample(@Param("record") Product record, @Param("example") ProductExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int updateByPrimaryKeySelective(Product record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_product
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int updateByPrimaryKey(Product record);
}