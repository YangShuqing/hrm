package com.buaa.hr.manager.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.buaa.hr.entity.Employee;
import com.buaa.hr.manager.IEmpTransfer;
import com.buaa.hr.untils.ConnectionFactory;
import com.buaa.hr.untils.Database;

public class EmpTransfer implements IEmpTransfer {
	public List queryAllEmp(){
		List empList = new ArrayList();
		Statement stmt = null;
		ResultSet rs = null;
		Connection conn = ConnectionFactory.getConnection();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from t_employee");//!!!!!
			Employee emp = null;
			while(rs.next()){
				emp = new Employee();
				emp.setEmpId(rs.getInt("empid"));
				emp.setEmpName(rs.getString("empname"));
				emp.setEmpSex(rs.getInt("empsex"));
				emp.setRanks(rs.getString("ranks"));
				emp.setDeptId(rs.getInt("deptid"));
				empList.add(emp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
			
		}
		
		return empList;
	}
	public List queryEmpById(int empId){//根据员工id查询到该员工
		List<Employee> empList = new ArrayList<Employee>();
		Statement stmt = null;
		ResultSet rs = null;
		Connection conn = ConnectionFactory.getConnection();
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from t_employee where empid='"+empId+"'");//!!!!!
			Employee emp = null;
			while(rs.next()){
				emp = new Employee();
				emp.setEmpId(rs.getInt("empid"));
				emp.setEmpName(rs.getString("empname"));
				emp.setEmpSex(rs.getInt("empsex"));
				emp.setRanks(rs.getString("ranks"));
				emp.setDeptId(rs.getInt("deptid"));
				empList.add(emp);
			}
				
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
			
		}
		
		return empList;
	}
	
	public List queryEmpByStr(String str){//根据输入的字符模糊查询员工
		List<Employee> empList = new ArrayList<Employee>();
		Statement stmt = null;
		ResultSet rs = null;
		Connection conn = ConnectionFactory.getConnection();
		PreparedStatement ps = null;
		try {
			stmt = conn.createStatement();
			String sql = "select * from t_employee where empname like ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%"+ str +"%");
			
			rs = ps.executeQuery();
			Employee emp = null;
			while(rs.next()){
				emp = new Employee();
				emp.setEmpId(rs.getInt("empid"));
				emp.setEmpName(rs.getString("empname"));
				emp.setEmpSex(rs.getInt("empsex"));
				emp.setRanks(rs.getString("ranks"));
				emp.setDeptId(rs.getInt("deptid"));
				empList.add(emp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
		
		return empList;
	}

	public void addEmpFormerDept(Employee emp,int ndeptid){//在调动信息表中写入员工的调动前所在部门
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate("insert into t_transferrecord (recordid,empid,empname,empsex,trftime,formerdepid,depid) values (seq_trfred.nextval,'"+emp.getEmpId()+"','"+emp.getEmpName()+"','"+emp.getEmpSex()+"',sysdate,'"+emp.getDeptId()+"','"+ndeptid+"')");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, null);
		}
	}
	
	public void updateEmpDept(Employee emp,int ndeptid){//实行员工部门调动
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate("update t_employee set deptid='"+ndeptid+"' where empid='"+emp.getEmpId()+"'");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void addEmpDept(Employee emp){//在调动信息表中写入员工调动后的所在部门
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate("update t_transferrecord set depid='"+emp.getDeptId()+"' where emp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, null);
		}
	}
		
	
}
