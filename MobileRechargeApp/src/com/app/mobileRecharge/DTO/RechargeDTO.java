package com.app.mobileRecharge.DTO;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="recharge_table")
public class RechargeDTO implements Serializable
{

	@Id
	@GenericGenerator(name = "gen1", strategy = "increment")
	@GeneratedValue(generator = "gen1")
	@Column(name = "transactionId")
	private int transactionId;
	
	@Column(name = "mobNum")
	private long mobNum;
	
	@Column(name = "operator")
	private String operator;
	
	@Column(name = "amount")
	private int amount;
	
	@Column(name = "state")
	private String state;
	
	@Column(name = "userId")
	 private long userId;

	public int getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}

	public long getmobNum() {
		return mobNum;
	}

	public void setmobNum(long mobNum) {
		this.mobNum = mobNum;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	
}
