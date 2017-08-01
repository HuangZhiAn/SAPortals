package hmdm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import hmdm.mapper.ProductStateMapper;
import hmdm.service.ProductStateService;
import org.springframework.stereotype.Service;

@Service
public class ProductStateServiceImpl implements ProductStateService{
	@Autowired
	private ProductStateMapper productStateMapper;
}
