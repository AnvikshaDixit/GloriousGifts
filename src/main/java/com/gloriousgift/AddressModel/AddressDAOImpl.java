package com.gloriousgift.AddressModel;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AddressDAOImpl implements AddressDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public void insert(Address a) {
		sessionFactory.getCurrentSession().saveOrUpdate(a);
		
	}

	public void delete(Address a) 
	{
		sessionFactory.getCurrentSession().delete(a);

		
	}

	public List<Address> list()
	{
		return sessionFactory.getCurrentSession().createQuery("from Address").list();
	}

}
