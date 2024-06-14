/*package com.tailoring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tailoring.entity.Employee;
import com.tailoring.service.EmployeeService;

@Controller
@RequestMapping("/employees")
public class EmployeerController {
	
	@Autowired
	private EmployeeService employeeservice;
	
	
	@GetMapping("/add-form")
	public String add(){
		employeeservice.save(@RequestBody  Employee e);
		return "addEmployee";
	}
}
*/
package com.tailoring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tailoring.entity.Employee;
import com.tailoring.service.EmployeeService;

@Controller
@RequestMapping("/employees")
public class EmployeerController {
	
	@Autowired
	private EmployeeService employeeservice;
	
	
	@GetMapping("/add-form")
	public String addPage(){
		
		return "addEmployee";
	}
	
	@PostMapping("/add")
	public String add(@ModelAttribute Employee e){
		employeeservice.add(e);
		return "addEmployee";
	}
}




