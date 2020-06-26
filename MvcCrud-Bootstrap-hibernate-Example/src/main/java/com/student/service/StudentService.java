package com.student.service;

import java.util.List;

import com.student.model.*;

public interface StudentService {
public void addStudent(Player player);
	
	public void updateStudent(Player player);
	
	public void deleteStudent(int rank);
	
	public Player getStudentById(int rank);
	
	public List<Player> getAllStudents();
	public List<Player> getAllStats();
}
