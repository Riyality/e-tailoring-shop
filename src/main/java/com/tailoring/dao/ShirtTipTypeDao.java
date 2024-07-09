package com.tailoring.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.ShirtTip;

@Repository
public interface ShirtTipTypeDao extends CrudRepository<ShirtTip, Integer> {
	@Override
	List<ShirtTip> findAll();

}
