package com.tailoring.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.Tailoring;
@Repository
public interface HomeDao extends CrudRepository<Tailoring, Integer> {
	
	
	
	


}
