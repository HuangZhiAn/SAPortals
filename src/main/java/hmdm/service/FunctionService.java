package hmdm.service;

import hmdm.dto.Function;
import hmdm.dto.FunctionExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by JoeHuang on 2017/8/9.
 */
public interface FunctionService extends IBaseService<Function,FunctionExample>{
    List<Function> selectByProductId(Long productId);
}
