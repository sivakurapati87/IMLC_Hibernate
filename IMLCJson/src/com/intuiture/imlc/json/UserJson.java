package com.intuiture.imlc.json;

/**
 * 
 * @author Siva Kurapati
 *
 */
public class UserJson {
	private String userName;
	private String password;
	private Boolean isStaySigned;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getIsStaySigned() {
		return isStaySigned;
	}

	public void setIsStaySigned(Boolean isStaySigned) {
		this.isStaySigned = isStaySigned;
	}

}
