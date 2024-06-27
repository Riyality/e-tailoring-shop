package com.tailoring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tailoring.entity.ReceiptContainer;
import com.tailoring.service.ReciptService;

@Controller
@RequestMapping( "/recipt" )
public class ReciptController {

	@Autowired
	private ReciptService reciptService;

	@GetMapping( "/add_recipt" )
	public String displayPage() {
		return "AddRecipt";

	}

	@PostMapping
	public void addReceipt( @ModelAttribute ReceiptContainer receipt ) {
		receipt.setCustomerId( 1 );
		reciptService.addReceipt( receipt );
		System.out.println(receipt);
		System.out.println( "finish" );
	}

}