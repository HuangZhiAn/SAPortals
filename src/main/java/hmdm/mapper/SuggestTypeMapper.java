package hmdm.mapper;

import hmdm.dto.SuggestType;
import hmdm.dto.SuggestTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SuggestTypeMapper {
    int countByExample(SuggestTypeExample example);

    int deleteByExample(SuggestTypeExample example);

    int deleteByPrimaryKey(Long typeId);

    int insert(SuggestType record);

    int insertSelective(SuggestType record);

    List<SuggestType> selectByExample(SuggestTypeExample example);

    SuggestType selectByPrimaryKey(Long typeId);

    int updateByExampleSelective(@Param("record") SuggestType record, @Param("example") SuggestTypeExample example);

    int updateByExample(@Param("record") SuggestType record, @Param("example") SuggestTypeExample example);

    int updateByPrimaryKeySelective(SuggestType record);

    int updateByPrimaryKey(SuggestType record);
}