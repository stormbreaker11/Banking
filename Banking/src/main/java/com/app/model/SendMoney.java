package com.app.model;

public class SendMoney {

	
	private String toAcc;
	private String fromAcc;
	private double amount;
	
	
	public String getToAcc() {
		return toAcc;
	}
	public void setToAcc(String toAcc) {
		this.toAcc = toAcc;
	}
	public String getFromAcc() {
		return fromAcc;
	}
	public void setFromAcc(String fromAcc) {
		this.fromAcc = fromAcc;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	
}
