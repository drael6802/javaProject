package com.spring.biz.vo;

import java.sql.Date;

public class UserVO {

	private int userCode;
	private String userId;
	private String userPassword;
	private String userName;
	private String userPhone;
	private String userEmail;
	private String userAddress;
	private String userAddress_info;
	private String userAdmin;
	private Date userBirth;
	private Date userJoinday;
	
	//
	
	public int getUserCode() {
		return userCode;
	}
	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserAddress_info() {
		return userAddress_info;
	}
	public void setUserAddress_info(String userAddress_info) {
		this.userAddress_info = userAddress_info;
	}
	public String getUserAdmin() {
		return userAdmin;
	}
	public void setUserAdmin(String userAdmin) {
		this.userAdmin = userAdmin;
	}
	public Date getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}
	public Date getUserJoinday() {
		return userJoinday;
	}
	public void setUserJoinday(Date userJoinday) {
		this.userJoinday = userJoinday;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
}
