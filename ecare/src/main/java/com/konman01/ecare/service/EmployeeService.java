package com.konman01.ecare.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.konman01.ecare.entity.Employee;


public interface EmployeeService {

	public List<Employee> getAllEmployees();
}
