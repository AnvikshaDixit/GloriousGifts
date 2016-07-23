package com.gloriousgift.ProductModel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductServiceImpl implements ProductService 
{
	@Autowired
	ProductDAO pdao;
	
	@Transactional
	public void insert(Product p) {
		pdao.insert(p);
	}

	@Transactional
	public List<Product> list() {
		// TODO Auto-generated method stub
		return pdao.list();
	}

	 @Transactional
		public void delete (int p) {
			pdao.delete(p);
		}

	    @Transactional
		public void updateItem(Product p) {
			pdao.updateItem(p);
		}
	
}
