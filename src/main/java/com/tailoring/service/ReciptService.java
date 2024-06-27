package com.tailoring.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.CustomerDao;
import com.tailoring.dao.ReceiptRepository;
import com.tailoring.entity.Customer;
import com.tailoring.entity.Receipt;
import com.tailoring.entity.ReceiptContainer;

@Service
public class ReciptService {

	@Autowired
	private ReceiptRepository receiptRepository;

	@Autowired
	private CustomerDao customerDao;

	public ReceiptContainer addReceipt( ReceiptContainer receipt ) {
		Receipt entity = new Receipt();
		entity.setCurrentDate( receipt.getCurrentDate() );
		entity.setDeliveryDate( receipt.getDeliveryDate() );
		Customer customer = null;
		Optional<Customer> opt = customerDao.findById( receipt.getCustomerId() );
		if ( opt.isPresent() ) {
			customer = opt.get();
			customer.setStatus( "Pending" );
		} else {
			customer = new Customer();
			customer.setName( receipt.getName() );
			customer.setAddress( receipt.getAddress() );
			customer.setContact( receipt.getContact() );
			customer = customerDao.save( customer );
		}
		entity.setCustomer( customer );
		entity.setStatus( "Pending" );
		entity.setAmount( receipt.getAmount() );
		entity.setPantDetailsEntity( receipt.getPantDetails() );
		entity.setShirtDetailsEntity( receipt.getShirtDetails() );
		entity.getShirtDetailsEntity().setCustomer( customer );
		entity.getPantDetailsEntity().setCustomer( customer );
		Receipt addedReceipt = receiptRepository.save( entity );
		ReceiptContainer container = new ReceiptContainer();
		container.setAddress( addedReceipt.getCustomer().getAddress() );
		container.setContact( addedReceipt.getCustomer().getContact() );
		container.setCurrentDate( addedReceipt.getCurrentDate() );
		container.setCustomerId( addedReceipt.getCustomer().getId() );
		container.setDeliveryDate( addedReceipt.getDeliveryDate() );
		container.setId( addedReceipt.getId() );
		container.setName( addedReceipt.getCustomer().getName() );
		container.setPantDetails( addedReceipt.getPantDetailsEntity() );
		container.setShirtDetails( addedReceipt.getShirtDetailsEntity() );
		container.setStatus( addedReceipt.getStatus() );
		return container;
	}

	public Long findMaxReceiptId() {
		return receiptRepository.findMaxId();
	}
}
