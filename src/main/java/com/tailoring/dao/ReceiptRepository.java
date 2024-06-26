package com.tailoring.dao;

import org.springframework.data.repository.CrudRepository;

import com.tailoring.entity.Receipt;

public interface ReceiptRepository extends CrudRepository<Receipt, Long> {
}
