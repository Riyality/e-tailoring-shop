package com.tailoring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
@RequestMapping("/recipt")
public class ReciptController {
	
	
	@GetMapping("/add_recipt")
	public String displayPage(){
		return "AddRecipt";
		
	}

}
