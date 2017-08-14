package hmdm.service.impl;

import hmdm.dto.SuggestInfo;
import hmdm.dto.SuggestInfoExample;
import hmdm.mapper.SuggestInfoMapper;
import hmdm.service.SuggestInfoService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by PC on 2017/8/9.
 */
@Service
public class SuggestInfoServiceImpl implements SuggestInfoService{
    @Autowired
    private SuggestInfoMapper suggestInfoMapper;

    @Override
    public long countByExample(SuggestInfoExample example) {
        return suggestInfoMapper.countByExample(example);
    }

    @Override
    public int deleteByExample(SuggestInfoExample example) {
        return suggestInfoMapper.deleteByExample(example);
    }

    @Override
    public int deleteByPrimaryKey(Long suggestId) {
        return 0;
    }

    @Override
    public int insert(SuggestInfo record) {
        return suggestInfoMapper.insert(record);
    }

    @Override
    public int insertSelective(SuggestInfo record) {
        return suggestInfoMapper.insertSelective(record);
    }

    @Override
    public List<SuggestInfo> selectByExample(SuggestInfoExample example) {
        return suggestInfoMapper.selectByExample(example);
    }

    @Override
    public SuggestInfo selectByPrimaryKey(Long suggestId) {
        return suggestInfoMapper.selectByPrimaryKey(suggestId);
    }

    @Override
    public int updateByExampleSelective(@Param("record") SuggestInfo record, @Param("example") SuggestInfoExample example) {
        return 0;
    }

    @Override
    public int updateByExample(@Param("record") SuggestInfo record, @Param("example") SuggestInfoExample example) {
        return 0;
    }

    @Override
    public int updateByPrimaryKeySelective(SuggestInfo record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(SuggestInfo record) {
        return 0;
    }

    @Override
    public void suggest(long customerId, long functionId, SuggestInfo suggestInfo) {

    }

    @Override
    public Long lastInsertId() {
        return suggestInfoMapper.lastInsertId();
    }
}
