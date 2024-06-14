package com.tailoring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.CustomerDao;
import com.tailoring.entity.Customer;

@Service
public class CustomerService {
	@Autowired
	private CustomerDao dao;

	public void addcustomerrecord(Customer c) {
		dao.save(c);  
		
		
		}
	
	


	
}


