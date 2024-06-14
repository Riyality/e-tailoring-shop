package com.tailoring.dao;

import org.springframework.data.repository.CrudRepository;

import com.tailoring.entity.Customer;

public interface CustomerDao extends CrudRepository<Customer, Integer> {

	
	
}
