package com.tailoring.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.ShirtDetailsDao;
import com.tailoring.entity.PantDetailsEntity;
import com.tailoring.entity.ShirtDetailsEntity;

@Service
public class ShirtDetailsService {
	
	@Autowired
	ShirtDetailsDao shirtDetailsDao;
	
	public void addShirtDetails(ShirtDetailsEntity shirtDetailsEntity) {
			shirtDetailsDao.save(shirtDetailsEntity);
	}
	
	public List<ShirtDetailsEntity> shirtDetails() {
		return shirtDetailsDao.findAll();
	}
	
	public Optional<ShirtDetailsEntity> updateShirtDetails(int id) {
		return shirtDetailsDao.findById(id);
	}
	
	public void deleteShirtDetails(int id) {
		shirtDetailsDao.deleteById(id);
	}
}
