package hmdm.service.impl;

import hmdm.dto.UserRole;
import hmdm.dto.UserRoleExample;
import hmdm.mapper.UserRoleMapper;
import hmdm.service.UserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by JoeHuang on 2017/8/30.
 */
@Service
public class UserRoleServiceImpl implements UserRoleService {

    @Autowired
    UserRoleMapper mapper;

    @Override
    public long countByExample(UserRoleExample example) {
        return mapper.countByExample(example);
    }

    @Override
    public int deleteByExample(UserRoleExample example) {
        return mapper.deleteByExample(example);
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return 0;
    }


    @Override
    public int insert(UserRole record) {
        return mapper.insert(record);
    }

    @Override
    public int insertSelective(UserRole record) {
        return mapper.insertSelective(record);
    }

    @Override
    public List<UserRole> selectByExample(UserRoleExample example) {
        return mapper.selectByExample(example);
    }

    @Override
    public UserRole selectByPrimaryKey(Long id) {
        return null;
    }

    @Override
    public int updateByExampleSelective(UserRole record, UserRoleExample example) {
        return 0;
    }

    @Override
    public int updateByExample(UserRole record, UserRoleExample example) {
        return 0;
    }

    @Override
    public int updateByPrimaryKeySelective(UserRole record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(UserRole record) {
        return 0;
    }
}
