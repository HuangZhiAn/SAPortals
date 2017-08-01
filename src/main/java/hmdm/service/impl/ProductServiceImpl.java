package hmdm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import hmdm.mapper.ProductMapper;
import hmdm.service.ProductService;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductMapper productMapper;
}
