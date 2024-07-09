package com.tailoring.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.PantTip;

@Repository
public interface PantTipTypeDao extends CrudRepository<PantTip, Integer> {

	@Override
	List<PantTip> findAll();

}
