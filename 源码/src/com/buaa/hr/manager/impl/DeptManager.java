package com.buaa.hr.manager.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.buaa.hr.entity.Dept;
import com.buaa.hr.manager.IDeptManager;
import com.buaa.hr.untils.ConnectionFactory;
import com.buaa.hr.untils.Database;

public class DeptManager implements IDeptManager {

	
	//查询所有部门
	public List queryAllDepts() {
		List depts = new ArrayList();		
		Connection conn = ConnectionFactory.getConnection();		
		Statement stmt =null;
		ResultSet rs =null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select *from t_dept");			
			Dept dept =null;
			while(rs.next()){
				dept =new Dept();
				dept.setDeptId(rs.getInt("deptid"));
				dept.setDeptName(rs.getString("deptname"));
				dept.setDeptLevel(rs.getInt("deptlevel"));
				dept.setSuperiorDeptId(rs.getInt("superiordeptid"));				
				depts.add(dept);
			}						
		} catch (Exception e) {			
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
		return depts;
	}

	
	//查询部门
	public Dept queryDeptByDeptId(int deptId) {
		Dept dept =new Dept();
		Connection conn = ConnectionFactory.getConnection();		
		Statement stmt =null;
		ResultSet rs =null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select *from t_dept where deptid='"+deptId+"'");
			if(rs.next()){
				dept.setDeptId(rs.getInt("deptid"));
				dept.setDeptName(rs.getString("deptname"));
				dept.setDeptLevel(rs.getInt("deptlevel"));
				dept.setSuperiorDeptId(rs.getInt("superiordeptid"));
			}									
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}			
		return dept;
	}

	
	

	
	//删除部门
	public void deleteDeptByDeptId(int deptId){
		Connection conn = ConnectionFactory.getConnection();		
		Statement stmt =null;
		ResultSet rs =null;
		try {
			stmt = conn.createStatement();
			stmt.executeQuery("delete from t_dept where deptid="+deptId);									
		} catch (SQLException e) {			
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
	}
	
	
	



	//增加部门
	public void addDept(Dept dept)  {
		Connection conn =ConnectionFactory.getConnection();			
		Statement stmt =null;
		ResultSet rs = null;				
		try {
			stmt=conn.createStatement();
			stmt.executeUpdate
				("insert into t_dept values('"+dept.getDeptId()+"','"+dept.getDeptName()+"','"+dept.getDeptLevel()+"','"+dept.getSuperiorDeptId()+"')");				
		} catch (Exception e) {				
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}	
	}

	//修改部门
	public void updateDeptByDeptId(Dept dept) {
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt =null;
		ResultSet rs = null;			
		try {										
			stmt = conn.createStatement();
			String sql="update t_dept set deptname='"+dept.getDeptName()+"' " +
					", deptlevel='"+dept.getDeptLevel()+"', superiordeptid='"+dept.getSuperiorDeptId()+"' " +
					"where deptid="+dept.getDeptId();
			stmt.executeUpdate(sql);
		} catch (Exception e) {			
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
	}


}
