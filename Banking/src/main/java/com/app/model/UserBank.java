package com.app.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GeneratorType;

public class UserBank {

	@Column(name = "AMOUNT")

	private double amount;

	@Column(name = "ACC")
	private String acc;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "NAME")
	private int accNo;
	private Date date;

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getAcc() {
		return acc;
	}

	public void setAcc(String acc) {
		this.acc = acc;
	}

	public int getAccNo() {
		return accNo;
	}

	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}

}
