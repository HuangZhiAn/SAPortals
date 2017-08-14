package hmdm.mapper;

import hmdm.dto.SuggestImages;
import hmdm.dto.SuggestImagesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SuggestImagesMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_suggest_images
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	long countByExample(SuggestImagesExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_suggest_images
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int deleteByExample(SuggestImagesExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_suggest_images
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int deleteByPrimaryKey(Long imagesId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_suggest_images
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int insert(SuggestImages record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_suggest_images
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int insertSelective(SuggestImages record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_suggest_images
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	List<SuggestImages> selectByExample(SuggestImagesExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_suggest_images
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	SuggestImages selectByPrimaryKey(Long imagesId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_suggest_images
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int updateByExampleSelective(@Param("record") SuggestImages record, @Param("example") SuggestImagesExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_suggest_images
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int updateByExample(@Param("record") SuggestImages record, @Param("example") SuggestImagesExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_suggest_images
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int updateByPrimaryKeySelective(SuggestImages record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table hmdm_pt_suggest_images
	 * @mbg.generated  Wed Aug 09 11:45:39 GMT+08:00 2017
	 */
	int updateByPrimaryKey(SuggestImages record);
}