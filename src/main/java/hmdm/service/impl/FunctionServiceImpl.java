package hmdm.service.impl;

import hmdm.dto.Function;
import hmdm.dto.FunctionExample;
import hmdm.mapper.FunctionMapper;
import hmdm.service.FunctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by JoeHuang on 2017/8/9.
 */
@Service
public class FunctionServiceImpl implements FunctionService {
    @Autowired
    FunctionMapper mapper;

    public long countByExample(FunctionExample example) {
        return mapper.countByExample(example);
    }

    public int deleteByExample(FunctionExample example) {
        return mapper.deleteByExample(example);
    }

    public int deleteByPrimaryKey(Long functionId) {
        return mapper.deleteByPrimaryKey(functionId);
    }

    public int insert(Function record) {
        return mapper.insert(record);
    }

    public int insertSelective(Function record) {
        return mapper.insertSelective(record);
    }

    public List<Function> selectByExample(FunctionExample example) {
        return mapper.selectByExample(example);
    }

    public Function selectByPrimaryKey(Long functionId) {
        return mapper.selectByPrimaryKey(functionId);
    }

    public int updateByExampleSelective(Function record, FunctionExample example) {
        return mapper.updateByExampleSelective(record,example);
    }

    public int updateByExample(Function record, FunctionExample example) {
        return mapper.updateByExample(record,example);
    }

    public int updateByPrimaryKeySelective(Function record) {
        return mapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Function record) {
        return mapper.updateByPrimaryKey(record);
    }

    /**
     * 通过产品id查询功能
     * @param productId
     * @return
     */
    public List<Function> selectByProductId(Long productId){
        return mapper.selectByProductId(productId);
    }
}
