package com.gloriousgift.UserModel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService
{
	@Autowired
	UserDAO udao;
	
	@Transactional
	public void insert(User u) {
		udao.insert(u);
	}

	@Transactional
	public void delete(User u)
	{
       udao.delete(u);
	}
     @Transactional
	public List<User> list() {
		// TODO Auto-generated method stub
		return null;
	}

     @Transactional
	public User get(User u) {
		// TODO Auto-generated method stub
		return null;
	}
    @Transactional
	public boolean isValidUser(String id, String name, boolean isAdmin) {
		// TODO Auto-generated method stub
		return false;
	}

	/*public boolean checkLogin(String username, String password) {
		       System.out.println("In Service class...Check Login");
		        return udao.checkLogin(username, password);
		 }*/
	}
    
   
	

