package com;

import java.util.List;

public interface StudentService {

	
	 public List<Student> getAllStudents();
	 
	 public Student getStudentById(int id);
	 
	 public void addStudent(Student student);
	 
	 public void deleteStudent(int id);
	

}