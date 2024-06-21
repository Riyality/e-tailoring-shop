package com.tailoring.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.PantDetailsEntity;

@Repository
public interface PantDetailsDao extends JpaRepository<PantDetailsEntity, Integer> {}
