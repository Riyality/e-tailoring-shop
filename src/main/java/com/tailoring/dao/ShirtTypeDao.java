package com.tailoring.dao;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import com.tailoring.entity.ShirtType;

@Repository
public interface ShirtTypeDao extends CrudRepository<ShirtType, Integer>{
	
	
	
	

}
