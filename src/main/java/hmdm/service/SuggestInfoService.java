package hmdm.service;

import hmdm.dto.SuggestInfo;
import hmdm.dto.SuggestInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by PC on 2017/8/9.
 */
public interface SuggestInfoService {

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

    void suggest(long customerId, long functionId, SuggestInfo suggestInfo);

    Long lastInsertId();

    List<SuggestInfo> selectSuggest(Long functionId);
}
