package com.student.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PlayerStats101")
public class PlayerStats {

	@Id
	@GeneratedValue
	private Integer playerId;
	private Integer assists;

	private Integer manOfTheMatch;

	private Integer ballOnDor;

	private String bio;
	
	public Integer getAssists() {
		return assists;
	}

	public void setAssists(Integer assists) {
		this.assists = assists;
	}

	public Integer getManOfTheMatch() {
		return manOfTheMatch;
	}

	public void setManOfTheMatch(Integer manOfTheMatch) {
		this.manOfTheMatch = manOfTheMatch;
	}

	public Integer getBallOnDor() {
		return ballOnDor;
	}

	public void setBallOnDor(Integer ballOnDor) {
		this.ballOnDor = ballOnDor;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}
	
}
