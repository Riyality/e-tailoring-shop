package com.tailoring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.PantTypeDao;
import com.tailoring.dao.PocketTypeDao;
import com.tailoring.entity.PantType;
import com.tailoring.entity.PocketType;

@Service
public class DropdownService {

	@Autowired
	private PantTypeDao pantTypeDao;

	@Autowired
	private PocketTypeDao pocketTypeDao;
	
	
	
	public void addPant(List<String> ptype) {
		List<PantType> list1 = new ArrayList<>();
		for (String input : ptype) {
			PantType t = new PantType();
			t.setPantType(input);
			list1.add(t);
		}
		pantTypeDao.saveAll(list1);
	}

	public void addPocket(List<String> inputs) {
		List<PocketType> list = new ArrayList<>();
		for (String input : inputs) {
			PocketType t = new PocketType();
			t.setType(input);
			list.add(t);
		}
		pocketTypeDao.saveAll(list);

	}
	
}
