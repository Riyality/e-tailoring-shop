package com.tailoring.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.CustomerDao;
import com.tailoring.dao.ReceiptRepository;
import com.tailoring.entity.Customer;
import com.tailoring.entity.Receipt;
import com.tailoring.entity.ReceiptContainer;
import com.tailoring.mapper.ReceiptMapper;

@Service
public class ReciptService {

	@Autowired
	private ReceiptRepository receiptRepository;

	@Autowired
	private CustomerDao customerDao;

	@Autowired
	private ReceiptMapper receiptMapper;

	public Receipt addReceipt( ReceiptContainer receipt ) {
		try {
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
			entity.setPantDetailsEntity( receiptMapper.toPantEntity( receipt.getPantDetails() ) );
			entity.setShirtDetailsEntity( receiptMapper.toShirtEntity( receipt.getShirtDetails() ) );
			entity.getShirtDetailsEntity().setCustomer( customer );
			entity.getPantDetailsEntity().setCustomer( customer );
			return receiptRepository.save( entity );

		} catch ( Exception e ) {
			e.printStackTrace();
		}
		return null;
	}

	public Long findMaxReceiptId() {
		return receiptRepository.findMaxId();
	}
}
