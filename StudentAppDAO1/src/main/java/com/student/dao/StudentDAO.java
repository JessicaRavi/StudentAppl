package com.student.dao;

import java.util.ArrayList;

import com.student.dto.Student;

public interface StudentDAO {
	
	public boolean insertStudent(Student s);
	public boolean updateStudent(Student s);
	public boolean deleteStudent(Student s);
	public Student getStudent(String mail, String password);
	public Student getStudent(long phone, String mail);
	public ArrayList<Student>getStudent();// because of multiple objects use ArrayList
	public Student getStudent(String name);
}
