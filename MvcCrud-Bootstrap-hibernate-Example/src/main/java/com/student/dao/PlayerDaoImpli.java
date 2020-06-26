package com.student.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.student.model.Player;

@Repository
@Transactional
public class PlayerDaoImpli implements PlayerDao {
	@Autowired
	private SessionFactory sessionFactory;

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public Player getPlayerByRank(int rank) {

		Player player = getCurrentSession().get(Player.class, rank);
		return player;
	}

	@Override
	public void addStudent(Player player) {

		getCurrentSession().save(player);

	}

	@Override
	public void updateStudent(Player player) {
		Player updatePlayer = getPlayerByRank(player.getRank());
		updatePlayer.setName(player.getName());
		updatePlayer.setClub(player.getClub());
		updatePlayer.setGoals(player.getGoals());
		updatePlayer.setNationalTeam(player.getNationalTeam());
		updatePlayer.setContent(player.getContent());
		getCurrentSession().update(updatePlayer);

	}

	@Override
	public void deleteStudent(int rank) {

		Player deletePlayer = getPlayerByRank(rank);
		if (deletePlayer != null) {
			getCurrentSession().delete(deletePlayer);
		}
		// TODO Auto-generated method stub

	}

	@Override
	public Player getStudentByRank(int rank) {
		Player player = getCurrentSession().get(Player.class, rank);
		// TODO Auto-generated method stub
		return player;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Player> getAllStudents() {
		return getCurrentSession().createQuery("from Player").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Player> getAllStats() {
		return getCurrentSession().createQuery("from PlayerStats").list();
	}

	/*
	 * @SuppressWarnings("deprecation") public StringBuilder getCities(String
	 * country) { String sql = "select * from cities";
	 * 
	 * @SuppressWarnings("rawtypes") NativeQuery createSQLQuery =
	 * getCurrentSession().createSQLQuery(sql);
	 * 
	 * StringBuilder stringBuilder = new StringBuilder(); Iterator iterator =
	 * createSQLQuery.list().iterator();
	 * 
	 * while (iterator.hasNext()) { Object[] object = (Object[]) iterator.next();
	 * stringBuilder.append(object[1]); stringBuilder.append("!"); }
	 * System.out.println("city: " + stringBuilder); return stringBuilder; }
	 */

}
