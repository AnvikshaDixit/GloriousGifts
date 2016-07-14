package com.gloriousgift.RoleSecurity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RoleSecurity implements Serializable
{
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private long Id;
	private int Role;
	private String Rolename;
	public int getRole() {
		return Role;
	}
	public void setRole(int role) {
		Role = role;
	}
	public String getRolename() {
		return Rolename;
	}
	public void setRolename(String rolename) {
		Rolename = rolename;
	}
	

}
