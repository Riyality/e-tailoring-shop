package com.tailoring.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tailoring.entity.Customer;
import com.tailoring.entity.Receipt;
import com.tailoring.entity.ReceiptContainer;
import com.tailoring.service.CustomerService;
import com.tailoring.service.ReciptService;

@Controller
@RequestMapping( "/recipt" )
public class ReciptController {

	@Autowired
	private ReciptService reciptService;

	@Autowired
	private CustomerService customerService;

	@GetMapping( "/add_recipt" )
	public String displayPage( @RequestParam String contact, Model model ) {
		Customer customer = customerService.getByContact( contact );
		model.addAttribute( "customer", customer );

		Long maxReceiptId = reciptService.findMaxReceiptId();
		if ( maxReceiptId != null )
			model.addAttribute( "receiptMaxId", maxReceiptId + 1 );
		else
			model.addAttribute( "receiptMaxId", 1 );
		return "AddRecipt";

	}

	@PostMapping
	public String addReceipt( @ModelAttribute ReceiptContainer receipt ) {
		Receipt container = reciptService.addReceipt( receipt );
		return "Payment";
	}
	
	@GetMapping("/getPendingAmount")
	public String getPendingAmount(Model model) {
	    List<Receipt> pendingAmount = reciptService.getPendingAmount();
	    
	    List<Receipt> pendingReceipts = new ArrayList<>();

	    for (Receipt receipt : pendingAmount) {
	        System.out.println("STATUS:" + receipt.getStatus());
	        if ("Pending".equals(receipt.getStatus())) {
	            pendingReceipts.add(receipt);
	        }
	    }

	    model.addAttribute("pa", pendingReceipts);
	    return "pendingAmount";
	}
	
	@GetMapping("/getTodayPendingAmount")
	public String todayReceivePendingAmount(Model model) {
		 List<Receipt> pendingAmount = reciptService.getPendingAmount();
		    
		    List<Receipt> pendingReceipts = new ArrayList<>();
		    LocalDate todayDate = LocalDate.now();
		    
		    for (Receipt receipt : pendingAmount) {
		        if ("Pending".equals(receipt.getStatus()) && todayDate.equals(receipt.getDeliveryDate())) {
		            pendingReceipts.add(receipt);
		        }
		    }
		    model.addAttribute("pa", pendingReceipts);
		    return "todayPendingReceiveAmount";
	}

}
