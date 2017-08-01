package hmdm.service;

import hmdm.dto.ProductState;
import hmdm.dto.ProductStateExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductStateService {
    int countByExample(ProductStateExample example);

    int deleteByExample(ProductStateExample example);

    int deleteByPrimaryKey(Integer stateId);

    int insert(ProductState record);

    int insertSelective(ProductState record);

    List<ProductState> selectByExample(ProductStateExample example);

    ProductState selectByPrimaryKey(Integer stateId);

    int updateByExampleSelective(@Param("record") ProductState record, @Param("example") ProductStateExample example);

    int updateByExample(@Param("record") ProductState record, @Param("example") ProductStateExample example);

    int updateByPrimaryKeySelective(ProductState record);

    int updateByPrimaryKey(ProductState record);
}
