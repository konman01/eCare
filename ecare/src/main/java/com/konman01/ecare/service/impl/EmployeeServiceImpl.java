package com.konman01.ecare.service.impl;

import java.util.List;

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

	
	
}
