package hmdm.controllers;

import org.springframework.web.bind.annotation.*;

@RestController
public class CustomerController {

	@RequestMapping("/hello")
	public String hello(){
		return "hello hmdm portals";
	}
}
