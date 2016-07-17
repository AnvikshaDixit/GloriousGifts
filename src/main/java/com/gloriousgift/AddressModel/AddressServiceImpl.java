package com.gloriousgift.AddressModel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AddressServiceImpl implements AddressService
{
	@Autowired
	AddressDAO adao;
	
	@Transactional
	public void insert(Address a)
	{
		adao.insert(a);
	}

	@Transactional
	public void delete(Address a)
	{
		
		adao.delete(a);
	}
	
	@Transactional
	public List<Address> list() {
		// TODO Auto-generated method stub
		return adao.list();
	}

}
