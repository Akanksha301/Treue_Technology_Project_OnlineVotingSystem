package com.project.entity;

public class VoteBEntity {

	private String vno ;
	private String elected ;
	private String email ;
	
	public VoteBEntity(String vno, String elected, String email) {
		super();
		this.vno = vno;
		this.elected = elected;
		this.email = email;
	}

	public VoteBEntity() {
		super();
	}

	public String getVno() {
		return vno;
	}

	public void setVno(String vno) {
		this.vno = vno;
	}

	public String getElected() {
		return elected;
	}

	public void setElected(String elected) {
		this.elected = elected;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "VoteBEntity [vno=" + vno + ", elected=" + elected + ", email=" + email + "]";
	}
	
	
}
