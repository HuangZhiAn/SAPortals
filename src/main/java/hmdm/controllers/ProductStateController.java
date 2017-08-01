package hmdm.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import hmdm.service.ProductStateService;

@Controller
public class ProductStateController {
	@Autowired
	private ProductStateService productStateService;
}
