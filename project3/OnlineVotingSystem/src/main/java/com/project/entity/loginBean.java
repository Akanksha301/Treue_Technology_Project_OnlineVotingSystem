package com.project.entity;

public class loginBean {

	private String email ;
	private String password ;
	
	
	public loginBean(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}


	public loginBean() {
		super();
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "loginBean [email=" + email + ", password=" + password + "]";
	}
	
	
}
