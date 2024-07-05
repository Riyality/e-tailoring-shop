package com.tailoring.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.Payment;
@Repository
public interface PaymentDao  extends CrudRepository<Payment, Integer>{

	

}


