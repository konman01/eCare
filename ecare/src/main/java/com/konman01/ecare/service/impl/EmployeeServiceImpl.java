package com.konman01.ecare.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.konman01.ecare.entity.Employee;
import com.konman01.ecare.repository.EmployeeRepository;
import com.konman01.ecare.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	// Get Employee Repository
	private EmployeeRepository employeeRepository;
	
	public EmployeeServiceImpl(EmployeeRepository theEmployeeRepository) {
		this.employeeRepository = theEmployeeRepository;
	}
	
	// Service to get All the employees
	@Override
	public List<Employee> getAllEmployees() {
		
		List<Employee> employees = employeeRepository.findAll();
		
		return employees;
	}

	// Service to get the list of Employees based on title
	@Override
	public List<Employee> getAllEmployeeBasedOnTitle(String title, HttpServletRequest req, HttpServletResponse res) {
		
		List<Employee> employees = employeeRepository.findAll();
		
		List<Employee> employeesOnTitle = employees.stream().filter(obj -> obj.getTitle().equals(title)).collect(Collectors.toList());
		
		return employeesOnTitle;
	}

	
	
}
