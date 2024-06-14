package com.tailoring.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tailoring.entity.Employee;


@Repository
public interface EmployeeDao extends CrudRepository<Employee, Integer> {
   
}