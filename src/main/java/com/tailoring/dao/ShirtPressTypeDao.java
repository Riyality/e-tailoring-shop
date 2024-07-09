package com.tailoring.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.ShirtPress;

@Repository
public interface ShirtPressTypeDao extends CrudRepository<ShirtPress, Integer> {

	@Override
	List<ShirtPress> findAll();

}
