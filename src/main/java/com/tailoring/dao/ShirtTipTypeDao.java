package com.tailoring.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.ShirtTip;
@Repository
public interface ShirtTipTypeDao extends CrudRepository<ShirtTip, Integer> {

	
}
