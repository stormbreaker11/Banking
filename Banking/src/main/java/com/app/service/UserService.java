package com.app.service;

import com.app.model.User;
import com.app.model.UserBank;

public interface UserService {

	User validateUser(User user);

	UserBank getBal(int acc);
}
