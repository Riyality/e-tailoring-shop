package com.tailoring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tailoring.dao.SignInDao;
import com.tailoring.entity.SignInEntity;

@Component
public class SignInService{
	
@Autowired
public SignInDao signInDao;


		public boolean validateUser(String email, String password) {
			SignInEntity user = signInDao.findByEmailAndPassword(email, password);
			
			if (user != null && user.getPassword().equals(password)) {
				return true;
			}
			return false;

		}
}
