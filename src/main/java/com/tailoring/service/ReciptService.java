package com.tailoring.service;

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

	public boolean addReceipt( ReceiptContainer receipt ) {
		Receipt entity = new Receipt();
		entity.setCurrentDate( receipt.getCurrentDate() );
		entity.setDeliveryDate( receipt.getDeliveryDate() );
		Customer customer = customerDao.findById( receipt.getCustomerId() ).get();
		entity.setCustomer( customer );
		receipt.setStatus( "Pending" );
		customer.setStatus("Pending");
		entity.setPantDetailsEntity( receipt.getPantDetails() );
		entity.setShirtDetailsEntity( receipt.getShirtDetails() );
		entity.getPantDetailsEntity().setCustomerId( 1 );
		entity.getPantDetailsEntity().setCustomerId( 1 );
		receiptRepository.save( entity );
		return false;
	}
}
