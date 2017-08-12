package com.cusoft.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;

@Entity
@Table(name="USERS")
public class Users extends ActionSupport {

	private static final long serialVersionUID = 1L;

	public Long getUserID() {
		return userID;
	}
	public void setUserID(Long userID) {
		this.userID = userID;
	}
	@RequiredFieldValidator( message = "The name is required" )
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@RequiredFieldValidator( message = "The password is required" )
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public char getAccStatus() {
		return accStatus;
	}
	public void setAccStatus(char accStatus) {
		this.accStatus = accStatus;
	}
	@Column (name = "users_ID")
	@Id
	@SequenceGenerator(name="userIdSeq",sequenceName="users_id_seq")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="userIdSeq")
	private Long userID;
	
	@Column (name = "users_usa_name")
	
	private String userName;
	
	@Column (name = "users_password")
	private String passWord;
	
	@Column (name = "users_location")
	private String location;
	
	@Column (name = "users_created_date")
	private Date createdDate;
	
	@Column (name = "users_acc_status_cd")
	private char accStatus;
	
}
