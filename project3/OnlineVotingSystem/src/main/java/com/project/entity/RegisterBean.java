package com.project.entity;

public class RegisterBean {

	private String name ;
	private String fname ;
	private String sname ;
	private String email ;
	private String contact ;
	private String gender ;
	private String dob ;
	private String vno ;
	private String password ;
	
	
	public RegisterBean(String name, String fname, String sname, String email, String contact, String gender,
			String dob, String vno, String password) {
		super();
		this.name = name;
		this.fname = fname;
		this.sname = sname;
		this.email = email;
		this.contact = contact;
		this.gender = gender;
		this.dob = dob;
		this.vno = vno;
		this.password = password;
	}


	public RegisterBean() {
		super();
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getSname() {
		return sname;
	}


	public void setSname(String sname) {
		this.sname = sname;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getContact() {
		return contact;
	}


	public void setContact(String contact) {
		this.contact = contact;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getVno() {
		return vno;
	}


	public void setVno(String vno) {
		this.vno = vno;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "RegisterBean [name=" + name + ", fname=" + fname + ", sname=" + sname + ", email=" + email
				+ ", contact=" + contact + ", gender=" + gender + ", dob=" + dob + ", vno=" + vno + ", password="
				+ password + "]";
	}
	
	
	
}
