package hmdm.service.impl;

import hmdm.dto.SuggestType;
import hmdm.dto.SuggestTypeExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hmdm.mapper.SuggestTypeMapper;
import hmdm.service.SuggestTypeService;

import java.util.List;

@Service
public class SuggestTypeServiceImpl implements SuggestTypeService{
	@Autowired
	private SuggestTypeMapper suggestTypeMapper;

	public int countByExample(SuggestTypeExample example) {
		return suggestTypeMapper.countByExample(example);
	}

	public int deleteByExample(SuggestTypeExample example) {
		return suggestTypeMapper.deleteByExample(example);
	}

	public int deleteByPrimaryKey(Long typeId) {
		return suggestTypeMapper.deleteByPrimaryKey(typeId);
	}

	public int insert(SuggestType record) {
		return suggestTypeMapper.insert(record);
	}

	public int insertSelective(SuggestType record) {
		return suggestTypeMapper.insertSelective(record);
	}

	public List<SuggestType> selectByExample(SuggestTypeExample example) {
		return suggestTypeMapper.selectByExample(example);
	}

	public SuggestType selectByPrimaryKey(Long typeId) {
		return suggestTypeMapper.selectByPrimaryKey(typeId);
	}

	public int updateByExampleSelective(@Param("record") SuggestType record, @Param("example") SuggestTypeExample example) {
		return suggestTypeMapper.updateByExampleSelective(record,example);
	}

	public int updateByExample(@Param("record") SuggestType record, @Param("example") SuggestTypeExample example) {
		return suggestTypeMapper.updateByExample(record,example);
	}

	public int updateByPrimaryKeySelective(SuggestType record) {
		return suggestTypeMapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(SuggestType record) {
		return suggestTypeMapper.updateByPrimaryKey(record);
	}

}
