package com.tailoring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tailoring.entity.Payment;
import com.tailoring.service.PaymentService;

@Controller
@RequestMapping("/payments")
public class PaymentController {
	
	@Autowired
	private PaymentService paymentservice;
	
	@GetMapping("/addform")
	public String addpage(){
		return "payments/add";
	}
	@PostMapping("/add")
	public String add( Payment p ,Model model){
		paymentservice.add(p);
		return "payments/add";
	}

}




