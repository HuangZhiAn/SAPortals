package hmdm.service.impl;

import hmdm.dto.DownRecord;
import hmdm.dto.DownRecordExample;
import hmdm.mapper.DownRecordMapper;
import hmdm.service.DownRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DownRecordServiceImpl implements DownRecordService{

    @Autowired
    DownRecordMapper mapper;

    @Override
    public int countByExample(DownRecordExample example) {
        return mapper.countByExample(example);
    }

    @Override
    public int deleteByExample(DownRecordExample example) {
        return mapper.deleteByExample(example);
    }

    @Override
    public int deleteByPrimaryKey(Long recordId) {
        return mapper.deleteByPrimaryKey(recordId);
    }

    @Override
    public int insert(DownRecord record) {
        return mapper.insert(record);
    }

    @Override
    public int insertSelective(DownRecord record) {
        return mapper.insertSelective(record);
    }

    @Override
    public List<DownRecord> selectByExample(DownRecordExample example) {
        return mapper.selectByExample(example);
    }

    @Override
    public DownRecord selectByPrimaryKey(Long recordId) {
        return selectByPrimaryKey(recordId);
    }

    @Override
    public int updateByExampleSelective(DownRecord record, DownRecordExample example) {
        return mapper.updateByExampleSelective(record,example);
    }

    @Override
    public int updateByExample(DownRecord record, DownRecordExample example) {
        return mapper.updateByExample(record,example);
    }

    @Override
    public int updateByPrimaryKeySelective(DownRecord record) {
        return mapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(DownRecord record) {
        return mapper.updateByPrimaryKey(record);
    }
}
