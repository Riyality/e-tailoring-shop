package com.tailoring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tailoring.dao.EmployeeDao;
import com.tailoring.entity.Employee;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeDao employeeDao;

    public void add(Employee employee) {
    	employee.setStatus("Active");
        employeeDao.save(employee);
    }

    public List<Employee> allEmployee() {
        return (List<Employee>) employeeDao.findAll();
    }

    public void updateEmployeeRecord(Employee employee) {
        employeeDao.save(employee);
    }

    public void deleteEmployeeRecord(int id) {
        employeeDao.deleteById(id);
    }

    public Employee findById(int id) {
        return employeeDao.findById(id).orElse(null);
    }
}
