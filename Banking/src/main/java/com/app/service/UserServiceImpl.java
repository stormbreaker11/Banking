package com.app.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.UserDao;
import com.app.model.User;
import com.app.model.UserBank;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	public UserDao userDao;

	public User validateUser(User user) {
		return userDao.validateUser(user);
	}

	@Override
	public UserBank getBal(int acc) {
		return userDao.getBal(acc);
	}

}