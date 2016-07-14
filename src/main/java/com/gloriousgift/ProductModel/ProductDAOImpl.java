package com.gloriousgift.ProductModel;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAOImpl implements ProductDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void insert(Product p) 
	{
		
		sessionFactory.getCurrentSession().saveOrUpdate(p);
	}

	public List<Product> list() 
	{
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}

	public void delete(Product p)
	{
		
		sessionFactory.getCurrentSession().delete(p);
		
	}
 
}
