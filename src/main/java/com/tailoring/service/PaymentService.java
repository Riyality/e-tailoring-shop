package com.tailoring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.PaymentDao;
import com.tailoring.entity.Payment;

    @Service
   public class PaymentService {

	@Autowired
	private PaymentDao paymentdao;

	public void add(Payment p) {
		paymentdao.save(p);
		
	}

	
	

}

