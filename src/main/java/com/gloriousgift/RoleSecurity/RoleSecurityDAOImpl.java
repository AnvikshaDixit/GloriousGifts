package com.gloriousgift.RoleSecurity;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class RoleSecurityDAOImpl implements RoleSecurityDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public void insert(RoleSecurity r) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(r);
		
	}


	public void delete(RoleSecurity r)
	{
		
		sessionFactory.getCurrentSession().delete(r);
	
		
	}
    
	
	public List<RoleSecurity> list() 
	{
	
		return sessionFactory.getCurrentSession().createQuery("from RoleSecurity").list();
	}

	public void GenerateRole(RoleSecurity r) {
		// TODO Auto-generated method stub
		
	}
	

}
