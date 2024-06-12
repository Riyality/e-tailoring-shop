package com.tailoring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.HomeDao;
import com.tailoring.dao.PantTypeDao;
import com.tailoring.entity.PantType;
import com.tailoring.entity.Tailoring;

@Service
public class HomeService {
	@Autowired
	private HomeDao dao;

	@Autowired
	private PantTypeDao pantTypeDao;

	public void add(List<String> inputs) {
		List<Tailoring> list = new ArrayList<>();
		for (String input : inputs) {
			Tailoring t = new Tailoring();
			t.setType(input);
			list.add(t);
		}
		dao.saveAll(list);
		
		

	}

	public void addpanttype(List<String> ptype) {
		saveTailoringData1(ptype);
	}

	private void saveTailoringData1(List<String> ptype) {
		List<PantType> list1 = new ArrayList<>();
		for (String input : ptype) {
			PantType t = new PantType();
			t.setPantType(input);
			list1.add(t);
		}
		pantTypeDao.saveAll(list1);
	}

}
