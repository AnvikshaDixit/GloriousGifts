package com.gloriousgift.AddressModel;

import java.util.List;

public interface AddressService 
{
 
	public void insert(Address a);

	public void delete(Address a);	
	
	public List<Address> list();


}
