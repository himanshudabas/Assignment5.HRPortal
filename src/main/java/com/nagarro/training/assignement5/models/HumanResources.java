package com.nagarro.training.assignement5.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class HumanResources {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long hrId;
	private String username;
	private String pass;
	
	
	public long getHrId() {
		return hrId;
	}
	public void setHrId(long hrId) {
		this.hrId = hrId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
}
