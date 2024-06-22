package com.tailoring.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.ShirtDetailsEntity;

@Repository
public interface ShirtDetailsDao extends JpaRepository<ShirtDetailsEntity, Integer> {}
