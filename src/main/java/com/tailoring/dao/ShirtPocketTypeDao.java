package com.tailoring.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.tailoring.entity.ShirtPocketType;

@Repository
public interface ShirtPocketTypeDao extends CrudRepository<ShirtPocketType, Integer> {
}