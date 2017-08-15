package hmdm.mapper;

import hmdm.dto.SuggestInfo;
import hmdm.dto.SuggestInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SuggestInfoMapper {

	long countByExample(SuggestInfoExample example);

	int deleteByExample(SuggestInfoExample example);

	int deleteByPrimaryKey(Long suggestId);

	int insert(SuggestInfo record);

	int insertSelective(SuggestInfo record);

	List<SuggestInfo> selectByExample(SuggestInfoExample example);

	SuggestInfo selectByPrimaryKey(Long suggestId);

	int updateByExampleSelective(@Param("record") SuggestInfo record, @Param("example") SuggestInfoExample example);

	int updateByExample(@Param("record") SuggestInfo record, @Param("example") SuggestInfoExample example);

	int updateByPrimaryKeySelective(SuggestInfo record);

	int updateByPrimaryKey(SuggestInfo record);

	Long lastInsertId();

	//通过functionID查询suggestInfo
	List<SuggestInfo> selectSuggest(Long functionId);

}