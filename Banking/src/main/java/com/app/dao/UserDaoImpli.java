package com.app.dao;

import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.model.User;
import com.app.model.UserBank;

@Repository
@Transactional
public class UserDaoImpli implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	public UserDaoImpli(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unused")
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public User validateUser(User user) {

		Session session = sessionFactory.openSession();

		String sql = "select * from USER_BAnk where email='" + user.getEmail() + "' and UPASSWORD='"
				+ user.getuPassword() + "'";

		System.out.println(sql + "--SQl Query ");
		@SuppressWarnings({ "deprecation", "unchecked" })
		List<User> users = session.createSQLQuery(sql).list();

		Iterator itr = users.iterator();
		User use = new User();
		while (itr.hasNext()) {

			Object[] user3 = (Object[]) itr.next();

			use.setId(Integer.parseInt(user3[0].toString()));
			use.setEmail(user3[1].toString());
			use.setuPassword(user3[2].toString());
			use.setName(user3[3].toString());
		}
		return use;
	}

	@Override
	public void transferMoney(double amount, String toAcc, String fromAcc) {

	}

	@Override
	public UserBank getBal(int accountNo) {
		UserBank userBank = getCurrentSession().get(UserBank.class, accountNo);
		return userBank;
	}

}
