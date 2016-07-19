 package com.gloriousgift.ProductModel;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;


@Entity
public class Product implements Serializable
{
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int ProductID;
	private String ProductName;
	private long Price;
	private String Manufacturer;
	private String image;
	
	@Transient
	private MultipartFile file;
	
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	public String getImage() {
		return image;
	}
	
	public long getPrice() {
		return Price;
	}
	public void setPrice(long price) {
		Price = price;
	}
	public String getManufacturer() {
		return Manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		Manufacturer = manufacturer;
	}
	public int getProductID() {
		return ProductID;
	}
	public void setProductID(int productID) {
		ProductID = productID;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	@Override
	public String toString() {
		return "{ProductID:\"" + ProductID + "\", ProductName:\"" + ProductName +"\", Price:\"" + Price
				+ "\", Manufacturer:\"" + Manufacturer + "\", Image:\"" + image + "\"}";
	}
	
}
