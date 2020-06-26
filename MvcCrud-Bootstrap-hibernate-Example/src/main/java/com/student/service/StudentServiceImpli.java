package com.student.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.model.*;
import com.student.dao.PlayerDao;

@Service
public class StudentServiceImpli implements StudentService{

	@Autowired

	PlayerDao playerDao;
	
	public void addStudent(Player player) 
	{
		playerDao.addStudent(player);
	}

	public void updateStudent(Player player) 
	{
		playerDao.updateStudent(player);
	}

	public void deleteStudent(int rank) {
		playerDao.deleteStudent(rank);
	}

	public Player getStudentById(int rank) 
	{
		return playerDao.getStudentByRank(rank);
	}

	public List<Player> getAllStudents() {
		return playerDao.getAllStudents();
				
	}

	@Override
	public List<Player> getAllStats() {
		return playerDao.getAllStats();
	}


}
