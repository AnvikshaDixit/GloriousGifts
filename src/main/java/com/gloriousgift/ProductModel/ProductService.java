package com.gloriousgift.ProductModel;

import java.util.List;

public interface ProductService 
{
	public void insert(Product p);
	
	public List<Product> list();
}
