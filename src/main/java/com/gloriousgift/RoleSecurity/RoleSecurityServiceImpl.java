package com.gloriousgift.RoleSecurity;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class RoleSecurityServiceImpl implements RoleSecurityService
{

	@Autowired
	RoleSecurityDAO rdao;
	
	@Transactional
	public void insert(RoleSecurity r) {
		rdao.insert(r);
		
	}
   @Transactional
	public void delete(RoleSecurity r) {
		rdao.delete(r);
	}
   @Transactional
	public List<RoleSecurity> list() {
		
		return rdao.list();
	}

   @Transactional
	public void GenerateRole(RoleSecurity r) {
		// TODO Auto-generated method stub
		
	}

}
