package com.tailoring.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.CustomerDao;
import com.tailoring.entity.Customer;

@Service
public class CustomerService {
	@Autowired
	private CustomerDao customerdao;

	public void addcustomerrecord(Customer customer) {
		customer.setStatus("Active");
		customerdao.save(customer);

	}

	public List<Customer> allcustomerrecord() {
		return (List<Customer>) customerdao.findAll();

	}

	public void updatecustomerrecord(Customer customer) {
		customerdao.save(customer);

	}

	public void deletecustomerrecord(int id) {
		customerdao.deleteById(id);

	}

	public Customer findbyid(int id) {
		return customerdao.findById(id).orElse(null);

	}

}
