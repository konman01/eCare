package com.konman01.ecare.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/employeeApi")
public class Employee {
	
	@GetMapping("/test")
	public String test(HttpServletRequest req, HttpServletResponse res) {
		
		return "hello";
	}

}
