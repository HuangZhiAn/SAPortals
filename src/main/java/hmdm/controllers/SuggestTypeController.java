package hmdm.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import hmdm.service.SuggestTypeService;

@Controller
public class SuggestTypeController {
	@Autowired
	private SuggestTypeService suggestTypeService;
}
