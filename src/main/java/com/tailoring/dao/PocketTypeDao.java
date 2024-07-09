package com.tailoring.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.PocketType;

@Repository
public interface PocketTypeDao extends CrudRepository<PocketType, Integer> {

	@Override
	List<PocketType> findAll();
}
