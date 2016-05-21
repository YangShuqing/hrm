package com.buaa.hr.manager;

import java.sql.SQLException;
import java.util.List;

import com.buaa.hr.entity.Role;
import com.buaa.hr.entity.User;

public interface IRoleManager {

	public Role queryRoleByRoleId(int roleId);
	
	public List queryAllRoles();
	
	public void addRole(Role role) ;
	
	public void deleteRoleByRoleId(int roleId);
	
	public void updateRoleByRoleId(int roleId);
	
	public boolean isValid(Role role);
	


}
