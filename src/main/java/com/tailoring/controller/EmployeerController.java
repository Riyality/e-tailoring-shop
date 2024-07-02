
package com.tailoring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tailoring.entity.Employee;
import com.tailoring.service.EmployeeService;

@Controller
@RequestMapping("/employees")
public class EmployeerController {
	
	@Autowired
	private EmployeeService employeeservice;
	
	
	@GetMapping("/add-form")
	public String addPage(){
		
		return "employees/add";
	}
	
	@PostMapping("/add")
	public String add(@ModelAttribute Employee e,Model model){
		employeeservice.add(e);
		List<Employee> list = employeeservice.allEmployee();
        model.addAttribute("list", list);
		return "employees/list";
	}
	
	@GetMapping("/allemployee")
    public String allEmployee(Model model) {
        List<Employee> list = employeeservice.allEmployee();
          model.addAttribute("list", list);
        return "employees/list";
    }
	
	@GetMapping("/update-form")
    public String updateForm(@RequestParam("id") int id, Model model) {
        Employee employee = employeeservice.findById(id);
        model.addAttribute("demo", employee);
        return "employees/edit";
    }

    @PostMapping(value="/update_employee")
    public String updateEmployee(@ModelAttribute Employee e ,Model model) {
    	employeeservice.updateEmployeeRecord(e);
    	
    	List<Employee> list = employeeservice.allEmployee();
        model.addAttribute("list", list);
        return "employees/list"; 
    }

    @GetMapping("/delete_employee")
    public String deleteEmployee(@RequestParam("id") int id) {
    	employeeservice.deleteEmployeeRecord(id);
        return "redirect:/employees/allemployee"; 
    }
    
   
}







