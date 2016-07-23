package com.gloriousgift.ProductModel;

import java.util.List;

public interface ProductService 
{
	public void insert(Product p);
	
	public List<Product> list();
	
     public void delete(int p); 
	
	public void updateItem(Product p);
}
