package com.tailoring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tailoring.entity.Customer;
import com.tailoring.service.CustomerService;

@Controller
@RequestMapping("/customers")
public class CustomerController {
	@Autowired
	private CustomerService customerservice;

	@GetMapping("/add_customer_form")
	public String displayPage() {
		return "customers/add";

	}

	@PostMapping("/addCustomer")
	public String addrecord(@ModelAttribute Customer customer, Model model) {
		customerservice.addcustomerrecord(customer);
		List<Customer> list = customerservice.allcustomerrecord();
		model.addAttribute("list", list);
		return "customers/list";
	}

	@GetMapping("/allcustomer")
	public String allcustomer(Model model) {
		List<Customer> list = customerservice.allcustomerrecord();
		model.addAttribute("list", list);
		return "customers/list";

	}

	@GetMapping("/update_customer")
	public String update(@RequestParam int id, Model model) {
		Customer customer = customerservice.findbyid(id);
		model.addAttribute("customer", customer);

		return "customers/edit";

	}

	@PostMapping(value="/updatecustomer")
	public String updateCustomer(@ModelAttribute Customer customer,Model model) {
		customerservice.updatecustomerrecord(customer);
		List<Customer> list = customerservice.allcustomerrecord();
		model.addAttribute("list", list);
		return "customers/list";
	}

	@GetMapping("/deletecustomer")
	public String deleteCustomerById(@RequestParam int id, Model model) {
		customerservice.deletecustomerrecord(id);
		List<Customer> list = customerservice.allcustomerrecord();
		model.addAttribute("list", list);
		return "customers/list";
	}
}
