package com.konman01.ecare.configuration;

import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Component;

import com.konman01.ecare.entity.ContactDetail;
import com.konman01.ecare.entity.Employee;
import com.konman01.ecare.repository.EmployeeRepository;

@Component
public class DataLoader {

	private EmployeeRepository employeeRepository;
	
	public DataLoader(EmployeeRepository theEmployeeRepository) {
		employeeRepository = theEmployeeRepository;
	}
	
	@PostConstruct
	public void loadData() {
		
		
		  // Get the List of Employees from the database 
		List<Employee> employees =employeeRepository.findAll();
		  
		  // if there are records in the Employee table, return 
		if(employees.size() > 0) 
		{ 
			return; 
		}
		
		Employee employee = new Employee("Manjunatha", "Koni Gururaja", "konimanjunatha@gmail.com", "Doctor");
		  
		ContactDetail contactDetail = new ContactDetail("3100 Ohi Dr", "Apt 342", "Friscp", "Texas", "75035", "6692104716");
		
		employee.setContactDetail(contactDetail);
		
		employeeRepository.save(employee);
		
		return;
		
	}
	
	
}
