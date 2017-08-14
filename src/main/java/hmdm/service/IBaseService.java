package hmdm.service;

import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface IBaseService<T,F> {
	long countByExample(F example);

	int deleteByExample(F example);

	int deleteByPrimaryKey(Long id);

	int insert(T record);

	int insertSelective(T record);

	List<T> selectByExample(F example);

	T selectByPrimaryKey(Long id);

	int updateByExampleSelective(@Param("record") T record, @Param("example") F example);

	int updateByExample(@Param("record") T record, @Param("example") F example);

	int updateByPrimaryKeySelective(T record);

	int updateByPrimaryKey(T record);

}

