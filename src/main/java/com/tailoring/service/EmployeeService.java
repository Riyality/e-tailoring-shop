package com.tailoring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.EmployeeDao;
import com.tailoring.entity.Employee;

@Service
public class EmployeeService  {

	@Autowired
	private EmployeeDao employeedao;
	
	
	public void add(Employee  e) {
	employeedao.save(e);
		
	}
   
}
	
	
	