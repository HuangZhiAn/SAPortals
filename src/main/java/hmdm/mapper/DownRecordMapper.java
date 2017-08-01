package hmdm.mapper;

import hmdm.dto.DownRecord;
import hmdm.dto.DownRecordExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DownRecordMapper {
    int countByExample(DownRecordExample example);

    int deleteByExample(DownRecordExample example);

    int deleteByPrimaryKey(Long recordId);

    int insert(DownRecord record);

    int insertSelective(DownRecord record);

    List<DownRecord> selectByExample(DownRecordExample example);

    DownRecord selectByPrimaryKey(Long recordId);

    int updateByExampleSelective(@Param("record") DownRecord record, @Param("example") DownRecordExample example);

    int updateByExample(@Param("record") DownRecord record, @Param("example") DownRecordExample example);

    int updateByPrimaryKeySelective(DownRecord record);

    int updateByPrimaryKey(DownRecord record);
}