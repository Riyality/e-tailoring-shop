package com.tailoring.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.tailoring.entity.Customer;

public interface CustomerDao extends CrudRepository<Customer, Integer> {

	Customer findByContact(String contact);

	List<Customer> findByNameContaining(String name);

}
