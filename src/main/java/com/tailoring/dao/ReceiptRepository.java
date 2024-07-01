package com.tailoring.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.tailoring.entity.Receipt;

public interface ReceiptRepository extends JpaRepository<Receipt, Long> {
	@Query( "SELECT MAX(e.id) FROM Receipt e" )
	Long findMaxId();
}
