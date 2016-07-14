package com.gloriousgift.RoleSecurity;

import java.util.List;

public interface RoleSecurityDAO {
	
	public void insert(RoleSecurity r);
	
	public void GenerateRole(RoleSecurity r);

	public void delete(RoleSecurity r);
	
	public List<RoleSecurity> list();
}
