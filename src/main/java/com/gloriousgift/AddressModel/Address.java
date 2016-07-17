package com.gloriousgift.AddressModel;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Address implements Serializable
{
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private String AddressId;
	private String Houseno;
	private String Address1;
	private String Address2;
	private String city;
	private String state;
	private String Country;
	private String zipcode;
	public String getAddressId() {
		return AddressId;
	}
	public void setAddressId(String addressId) {
		AddressId = addressId;
	}
	public String getHouseno() {
		return Houseno;
	}
	public void setHouseno(String houseno) {
		Houseno = houseno;
	}
	public String getAddress1() {
		return Address1;
	}
	public void setAddress1(String address1) {
		Address1 = address1;
	}
	public String getAddress2() {
		return Address2;
	}
	public void setAddress2(String address2) {
		Address2 = address2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	@Override
	public String toString() {
		return "{AddressId: \" "+ AddressId + "\", Houseno:\"" + Houseno +"\", Address1:\"" + Address1 +"\" , Address2:\""
				+ Address2 +"\", city:\" "+ city +"\", state:\"" + state +"\", Country:\"" + Country +"\", zipcode:\" "+ zipcode
				+"\"}";
	}
	
}
