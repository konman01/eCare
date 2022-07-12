package com.konman01.ecare.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.konman01.ecare.entity.Employee;


public interface EmployeeService {

	public List<Employee> getAllEmployees();
	
	public List<Employee> getAllEmployeeBasedOnTitle(String title, HttpServletRequest req, HttpServletResponse res);
	
}
