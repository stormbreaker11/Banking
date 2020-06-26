package com.student.dao;



import java.util.List;

import com.student.model.*;

public interface PlayerDao 

{ 
	public void addStudent(Player player);
	
	public void updateStudent(Player player);
	
	public void deleteStudent(int rank);
	
	public Player getStudentByRank(int rank);
	
	public List<Player> getAllStudents();
	public List<Player> getAllStats();
	
	
	
}
