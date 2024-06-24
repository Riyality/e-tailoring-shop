package com.tailoring.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;

import com.tailoring.dao.PantDetailsDao;
import com.tailoring.entity.PantDetailsEntity;

@Service
public class PantDetailsService {
	
	@Autowired
	PantDetailsDao pantDetailsDao;
	
	public void addPantDetails(PantDetailsEntity pantDetailsEntity) {
			pantDetailsDao.save(pantDetailsEntity);
	}
	
	public List<PantDetailsEntity> pantDetails() {
		return pantDetailsDao.findAll();
	}
	
	public Optional<PantDetailsEntity> updatePantDetails(int id) {
		return pantDetailsDao.findById(id);
	}
	
	public void deletePantDetails(int id) {
		pantDetailsDao.deleteById(id);
	}
}
