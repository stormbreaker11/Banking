package com.student.model;

import java.sql.Blob;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Goals101")
public class Player {
	@Column(name = "Name")
	private String name;

	@Id
	@GeneratedValue
	@Column(name = "rank")
	private int rank;

	@Column(name = "Goals")
	private String goals;

	@Column(name = "club")
	private String club;

	@Column(name = "content")
	@Lob
	private Blob content;

	@Column(name = "National_Team")
	private String nationalTeam;

	@OneToOne(fetch=FetchType.LAZY , cascade=CascadeType.ALL)
	@JoinColumn(name="playerStats_playerId")
	private PlayerStats playerStats;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public String getGoals() {
		return goals;
	}

	public void setGoals(String goals) {
		this.goals = goals;
	}

	public String getClub() {
		return club;
	}

	public void setClub(String club) {
		this.club = club;
	}

	public Blob getContent() {
		return content;
	}

	public void setContent(Blob content) {
		this.content = content;
	}

	public String getNationalTeam() {
		return nationalTeam;
	}

	public void setNationalTeam(String nationalTeam) {
		this.nationalTeam = nationalTeam;
	}

	public PlayerStats getPlayerStats() {
		return playerStats;
	}

	public void setPlayerStats(PlayerStats playerStats) {
		this.playerStats = playerStats;
	}

	
}
