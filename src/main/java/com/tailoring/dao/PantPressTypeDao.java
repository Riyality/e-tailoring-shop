package com.tailoring.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.PantPress;

@Repository
public interface PantPressTypeDao extends CrudRepository<PantPress, Integer> {

	
	
}
