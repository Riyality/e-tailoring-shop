package com.tailoring.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.tailoring.entity.Customer;
import com.tailoring.entity.Receipt;

public interface ReceiptRepository extends JpaRepository<Receipt, Long> {
	@Query( "SELECT MAX(e.id) FROM Receipt e" )
	Long findMaxId();

	List<Receipt> findByCustomerAndStatus( Customer customer, String status );
}
