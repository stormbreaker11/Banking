package com.app.dao;

import com.app.model.User;
import com.app.model.UserBank;

public interface UserDao {
	public User validateUser(User user);

	public void transferMoney(double amount, String toAcc, String fromAcc);

	public UserBank getBal(int accountNo);
}