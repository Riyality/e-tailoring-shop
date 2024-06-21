package com.tailoring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tailoring.entity.Customer;
import com.tailoring.service.CustomerService;


@Controller
@RequestMapping("/customers")
public class CustomerController {
	@Autowired
	private CustomerService customerservice;
	
	@GetMapping("/add_customer_form")
	public String displayPage(){
		return "addCustomer";
		
	}
	
	@PostMapping("/addCustomer")
	public String addrecord(@ModelAttribute Customer customer ) {	
		customerservice.addcustomerrecord(customer);
		return "addCustomer";
	}
}  



