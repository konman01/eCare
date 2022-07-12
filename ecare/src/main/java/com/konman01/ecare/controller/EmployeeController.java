package com.konman01.ecare.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.konman01.ecare.entity.Employee;
import com.konman01.ecare.repository.EmployeeRepository;
import com.konman01.ecare.service.EmployeeService;

@RestController
@RequestMapping("/employee")
public class EmployeeController {
	
	private EmployeeService employeeService;
	
	public EmployeeController(EmployeeService theEmployeeService) {
		this.employeeService = theEmployeeService;
	}
	

	// Controller to get the list of al the Employees
	@GetMapping("/getemployees")
	public List<Employee> getAllEmployees(HttpServletRequest req, HttpServletResponse res) {
		
		return employeeService.getAllEmployees();
	}
	
	// Controller to get the list of Employees based on title
	@GetMapping("/getemployeeontitle/{employeeTitle}")
	public List<Employee> getEmployeesOnTitle(@PathVariable String employeeTitle, HttpServletRequest req, HttpServletResponse res){
		return employeeService.getAllEmployeeBasedOnTitle(employeeTitle, req, res);
	}

}
