package com.app.mobileRecharge.DTO;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="Mobile_Table")
public class MobileRechargeDTO implements Serializable
{

	@Column(name="fname")
	private String fname;
	
	@Column(name="lname")
	private String lname;
	
	@Column(name="gmail")
	private String gmail;
	
	@Column(name="DOB")
	private String DOB;
	
	@Column(name="gender")
	private String gender;
	
	@Id
	@Column(name="mobNo")
	private long mobNo;
	
	@Column(name="isAdmin")
	private String isAdmin;
	
	@Column(name="password")
	private String password;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="Mobdto")
	//@PrimaryKeyJoinColumn
	private Collection<RechargeDTO> mobdto;

	public Collection<RechargeDTO> getMobdto() {
		return mobdto;
	}

	public void setMobdto(Collection<RechargeDTO> mobdto) {
		this.mobdto = mobdto;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	public String getDOB() {
		return DOB;
	}

	public void setDOB(String dOB) {
		DOB = dOB;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public long getMobNo() {
		return mobNo;
	}

	public void setMobNo(long mobNo) {
		this.mobNo = mobNo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(String isAdmin) {
		this.isAdmin = isAdmin;
	}
	
}
