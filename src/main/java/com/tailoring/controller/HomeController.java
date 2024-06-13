package com.tailoring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.tailoring.service.HomeService;

@Controller
public class HomeController {

	@GetMapping("/")
	public String loginPage() {
		return "login/login";
		
		
	}

	@GetMapping("/home")
	public String dashboard() {
		return "index";
	}

	@GetMapping("/addCustomerForm")
	public String addCustomerForm() {
		return "addCustomer";
	}

}
