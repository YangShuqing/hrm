package com.buaa.hr.manager.impl;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.buaa.hr.entity.Role;
import com.buaa.hr.manager.IRoleManager;
import com.buaa.hr.untils.ConnectionFactory;
import com.buaa.hr.untils.Database;

public class RoleManager implements IRoleManager{

	//查询所有角色
	public List queryAllRoles(){ 
		List roles = new ArrayList();
		Role role = null;
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			String sql="select * from t_role order by roleId";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				role = new Role();
				role.setRoleId(rs.getInt("roleId"));
				role.setRoleName(rs.getString("roleName"));
				roles.add(role);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
		return roles;
	}
	
	 //添加角色
	public void addRole(Role role){
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			String sql="insert into t_role values('"+role.getRoleId()+"','"+role.getRoleName()+"')";
			stmt.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
	}
	

	
	public boolean isValid(Role role){
		boolean flag = false;
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			String sql = "select * from t_role";
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	

	//删除角色
	public void deleteRoleByRoleId(int roleId)  {
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			String sql = "delete from t_role where roleid='"+roleId+"'";
			stmt.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
	}
	
	
	//通过id查询角色
	public Role queryRoleByRoleId(int roleId) {	
		Role role = new Role();
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			String sql="select * from t_role where roleid='"+roleId+"'";
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				role.setRoleId(rs.getInt("roleid"));
				role.setRoleName(rs.getString("rolename"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
		return role;
	}
	
	
	//修改角色
	public void updateRoleByRoleId(int roleId) {
		Role role = new Role();
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			String sql = "update t_role set rolename='"+role.getRoleId()+"'where roleid='"+roleId+"'";
			stmt.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
	}
}
