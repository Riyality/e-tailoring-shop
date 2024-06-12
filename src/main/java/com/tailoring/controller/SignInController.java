package com.tailoring.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tailoring.service.SignInService;

@Controller
public class SignInController {
	
	@Autowired
	public SignInService signInService;
	
	
	@PostMapping("/")
	public String userSignIn(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
		boolean isValidUser = signInService.validateUser(email, password);
		
		if (isValidUser) {
			
			return"redirect:/home";
		}else {
			model.addAttribute("error", "Invalid email or password! Please try again.");
			return "login/login";
		}
 
	}
}

