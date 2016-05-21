package com.buaa.hr.manager.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.buaa.hr.entity.User;
import com.buaa.hr.manager.IUserManager;
import com.buaa.hr.untils.ConnectionFactory;
import com.buaa.hr.untils.Database;

public class UserManager implements IUserManager {

	//判断用户是否合法
	public boolean isValid(User user) {
		// TODO Auto-generated method stub
		boolean flag = false;			
		Connection conn = ConnectionFactory.getConnection();			
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery
				("select *from t_user where " +
						"username ='"+user.getUserName()+"' and " +
								"password='"+user.getPassWord()+"'");
			if(rs.next()){
				flag =true;
			}				
		} catch (Exception e) {				
			e.printStackTrace();
		}			
		return flag;
	}

	
	//查询所有用户
	public List queryAllUsers() {
		// TODO Auto-generated method stub
		List users = new ArrayList();			
		Connection conn =ConnectionFactory.getConnection();
		Statement stmt =null;
		ResultSet rs =null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select *from t_user order by userid ");				
			User user = null;
			while(rs.next()){
				user = new User();
				user.setUserId(rs.getInt("userid"));
				user.setUserName(rs.getString("username"));
				user.setPassWord(rs.getString("password"));
				user.setRoleId(rs.getInt("roleid"));					
				users.add(user);
			}				
		} catch (SQLException e) {				
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}			
		return users;	
	}

	
	//增加用户
	public void addUser(User user) {		
		Connection conn =ConnectionFactory.getConnection();			
		Statement stmt =null;
		ResultSet rs = null;				
		try {
			stmt=conn.createStatement();
			stmt.executeUpdate
				("insert into t_user values('"+user.getUserId()+"','"+user.getUserName()+"','"+user.getPassWord()+"','"+user.getRoleId()+"')");				
		} catch (Exception e) {				
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}			
	}

	
	//修改用户
	public void updateUserByUserId(User user) {
		// TODO Auto-generated method stub
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt =null;
		ResultSet rs = null;			
		try {				
						
			stmt = conn.createStatement();
			String sql="update t_user set username='"+user.getUserName()+"' " +
					", password='"+user.getPassWord()+"', roleid='"+user.getRoleId()+"' " +
					"where userid="+user.getUserId();
			stmt.executeUpdate(sql);
		} catch (Exception e) {
			
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
	}


	
	//删除某个用户
	public void deleteUserByUserId(int userId) {
		// TODO Auto-generated method stub
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt =null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate("delete from t_user where userid ='"+userId+"'");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
	}

	
	//查询某个用户
	public User queryUserByUserId(int userId) {
		// TODO Auto-generated method stub
		User user = new User();
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt =null;
		ResultSet rs =null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery
				("select *from t_user where userid="+userId);
			if(rs.next()){
				user.setRoleId(rs.getInt("roleid"));
				user.setUserId(rs.getInt("userid"));
				user.setUserName(rs.getString("username"));
				user.setPassWord(rs.getString("password"));
			}				
		} catch (Exception e) {				
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}			
		return user;
	}


	public void updateUserByUserId(int userId) {
		// TODO Auto-generated method stub
		
	}


}
