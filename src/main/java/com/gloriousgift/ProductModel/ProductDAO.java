package com.gloriousgift.ProductModel;

import java.util.List;

public interface ProductDAO 
{

	public void insert(Product p);
	
	public void delete(Product p); 
	
	public List<Product> list();

	
}
