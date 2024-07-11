package com.tailoring.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.CustomerDao;
import com.tailoring.dao.ReceiptRepository;
import com.tailoring.entity.Customer;
import com.tailoring.entity.Receipt;

@Service
public class CustomerService {
	@Autowired
	private CustomerDao customerdao;

	@Autowired
	private ReceiptRepository receiptRepository;

	public void addcustomerrecord( Customer customer ) {
		customer.setStatus( "Active" );
		customerdao.save( customer );

	}

	public List<Customer> allcustomerrecord() {
		return ( List<Customer> ) customerdao.findAll();

	}

	public void updatecustomerrecord( Customer customer ) {
		customerdao.save( customer );

	}

	public void deletecustomerrecord( int id ) {
		customerdao.deleteById( id );

	}

	public Customer findbyid( int id ) {
		return customerdao.findById( id ).orElse( null );

	}

	public Customer getByContact( String contact ) {
		return customerdao.findByContact( contact );
	}

	public List<Customer> getCustomersByName( String name ) {
		return customerdao.findByNameContaining( name );
	}

	public List<Receipt> getCustomersPendingBills( int id ) {
		Optional<Customer> opt = customerdao.findById( id );
		if ( opt.isPresent() ) {
			List<Receipt> receipts = receiptRepository.findByCustomerAndStatus( opt.get(), "Pending" );
			return receipts;
		}

		return null;
	}
}
