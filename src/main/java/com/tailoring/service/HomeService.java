package com.tailoring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.HomeDao;
import com.tailoring.entity.Tailoring;

@Service
public class HomeService {
	@Autowired
	private HomeDao dao;

	public void add(List<String> inputs) {
		List<Tailoring> list = new ArrayList<>();
		for(String input : inputs){
			Tailoring t = new Tailoring();
			t.setType(input);
			list.add(t);
		}
		dao.saveAll(list);

	}

}
