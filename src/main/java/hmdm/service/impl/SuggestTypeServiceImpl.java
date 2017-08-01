package hmdm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hmdm.mapper.SuggestTypeMapper;
import hmdm.service.SuggestTypeService;
@Service
public class SuggestTypeServiceImpl implements SuggestTypeService{
	@Autowired
	private SuggestTypeMapper suggestTypeMapper;
}
