package com.tailoring.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.PantPress;
import com.tailoring.entity.ShirtPress;

@Repository
public interface ShirtPressTypeDao extends CrudRepository<ShirtPress, Integer> {

	
	
	
}
