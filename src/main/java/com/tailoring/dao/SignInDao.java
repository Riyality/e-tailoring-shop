package com.tailoring.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.SignInEntity;

@Repository
public interface SignInDao extends JpaRepository<SignInEntity, Integer> {
	
	SignInEntity findByEmailAndPassword(String email, String password);
}
 