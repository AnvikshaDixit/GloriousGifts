package com.gloriousgift.UserModel;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class User implements Serializable
{
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int ID;
	
	
	private String Email;
	
	
	private String Username;
	
    
	private String Password;
    
	@Transient
	private String CPassword;
	
	
	private String Address;
	
	private String Phone;
	
	private int Role = 1;
	private boolean Active = true;
	public int getID() 
	{
		return ID;
	}
	public void setID(int id) 
	{
		ID = id;
	}
	
	@NotEmpty(message="Email Field is mandatory.")
	@Pattern(regexp=".+@.+\\..+", message="Wrong email!")
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	
	@NotEmpty(message="Username Field Mandatory.")
	
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	
	@NotEmpty(message="Password Should Not be empty.")
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
	
	@NotEmpty(message="Confirm-Password Should Not be empty.")
	public String getCPassword() {
		return CPassword;
	}
	public void setCPassword(String cPassword) {
		CPassword = cPassword;
	}
	
	
	@NotEmpty(message="Address Field is Mandatory")
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	
	@Length(max=10,min=10,message="Phone number is not valid.  ")
	@NotEmpty(message="Phone Filed is Mandatory")
	
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public int getRole() {
		return Role;
	}
	public void setRole(int role) {
		Role = role;
	}
	public boolean isActive() {
		return Active;
	}
	public void setActive(boolean active) {
		Active = active;
	}
		
	
}