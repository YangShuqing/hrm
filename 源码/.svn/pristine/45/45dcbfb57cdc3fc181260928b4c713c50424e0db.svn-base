package com.buaa.hr.manager.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.buaa.hr.entity.Employee;
import com.buaa.hr.manager.IEmpManager;
import com.buaa.hr.untils.ConnectionFactory;
import com.buaa.hr.untils.Database;

public class EmpManager implements IEmpManager{
	
	
	public List printAllEmp(){//打印所有的员工信息
		List allemp=new ArrayList();
		
		Connection conn = null;
				
		Statement stmt = null;
		ResultSet rs = null;
	
		
		conn=ConnectionFactory.getConnection();
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery("select *from T_EMPLOYEE order by empid");
			while(rs.next()){
				Employee emp=new Employee();
				emp.setEmpId(rs.getInt("empid"));
				emp.setEmpName(rs.getString("empname"));
				emp.setEmpSex(rs.getInt("empsex"));
				emp.setSchool(rs.getString("school"));
				emp.setDeptId(rs.getInt("deptid"));
				emp.setJob(rs.getString("job"));
				emp.setRanks(rs.getString("ranks"));
				emp.setState(rs.getInt("state"));
//				emp.setBirthday(rs.getDate("birthday"));
				emp.setDegree(rs.getString("degree"));
			
				emp.setAge(rs.getInt("age"));
				allemp.add(emp);
			}
	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
		return allemp;
	}
	
	
	public Employee printEmpById(int empId){//打印单个员工信息
		Employee emp=new Employee();
		Connection conn = null;
				
		Statement stmt = null;
		ResultSet rs = null;
	
		
		conn=ConnectionFactory.getConnection();
		
			try {
				stmt=conn.createStatement();
				rs=stmt.executeQuery("select *from T_EMPLOYEE where empid='"+empId+"'");
				while(rs.next()){
					emp.setEmpId(rs.getInt("empid"));
					emp.setEmpName(rs.getString("empname"));
					emp.setEmpSex(rs.getInt("empsex"));
					emp.setSchool(rs.getString("school"));
					emp.setDeptId(rs.getInt("deptid"));
					emp.setJob(rs.getString("job"));
					emp.setRanks(rs.getString("ranks"));
					emp.setState(rs.getInt("state"));
//					emp.setBirthday(rs.getDate("birthday"));
					emp.setDegree(rs.getString("degree"));
				
					emp.setAge(rs.getInt("age"));
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				Database.release(conn, stmt, rs);
			}
			return emp;
		
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
				emp.setSchool(rs.getString("school"));
				emp.setDeptId(rs.getInt("deptid"));
				emp.setJob(rs.getString("job"));
				emp.setRanks(rs.getString("ranks"));
				emp.setState(rs.getInt("state"));
//				emp.setBirthday(rs.getDate("birthday"));
				emp.setDegree(rs.getString("degree"));
				emp.setAge(rs.getInt("age"));
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
				emp.setSchool(rs.getString("school"));
				emp.setDeptId(rs.getInt("deptid"));
				emp.setJob(rs.getString("job"));
				emp.setRanks(rs.getString("ranks"));
				emp.setState(rs.getInt("state"));
//				emp.setBirthday(rs.getDate("birthday"));
				emp.setDegree(rs.getString("degree"));
				emp.setAge(rs.getInt("age"));
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
	
	
	public List queryAllEmpByDeptId(int deptid){
		List allemp = new ArrayList();
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			conn = ConnectionFactory.getConnection();
			try {
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select * from T_EMPLOYEE where deptid='"+deptid+"'");
				while(rs.next()){
					Employee emp=new Employee();
					emp.setEmpId(rs.getInt("empid"));
					emp.setEmpName(rs.getString("empname"));
					emp.setEmpSex(rs.getInt("empsex"));
					emp.setSchool(rs.getString("school"));
					emp.setDeptId(rs.getInt("deptid"));
					emp.setJob(rs.getString("job"));
					emp.setRanks(rs.getString("ranks"));
					emp.setState(rs.getInt("state"));
					emp.setDegree(rs.getString("degree"));
					
					emp.setAge(rs.getInt("age"));
					allemp.add(emp);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				Database.release(conn, stmt, rs);
			}
		return allemp;
	}
	public void addEmp(Employee emp){ //增加员工信息
		
		Connection conn = null;
		Statement stmt = null;
		try{
		conn=ConnectionFactory.getConnection();
		stmt=conn.createStatement();
		
		stmt.executeUpdate("insert into t_employee values("+emp.getEmpId()+",'"+emp.getEmpName()+"',"
				+emp.getEmpSex()+",'"+emp.getSchool()+"','"+emp.getDegree()+"',"+emp.getDeptId()+",'"+emp.getJob()+"','"+
				emp.getRanks()+"',"+emp.getState()+","+emp.getAge()+")");
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, null);
		}
		
		
	}
	
	public void  deleteEmpById(int empId){ //删除员工信息
		Connection conn = null;
		Statement stmt = null;
	
		conn=ConnectionFactory.getConnection();
		try {
			stmt=conn.createStatement();
			stmt.executeUpdate("delete from t_employee where empid='"+empId+"'");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, null);
		}
		
		
		
	}
	
	public void alterEmp(Employee emp){ //更新员工信息
		Connection conn = null;
		Statement stmt = null;
	
		conn=ConnectionFactory.getConnection();
		
			try {
				stmt=conn.createStatement();
				stmt.executeUpdate("update t_employee set empname='"+emp.getEmpName()+"' , empsex="
				+emp.getEmpSex()+", school='"+emp.getSchool()+"' ,deptid="+emp.getDeptId()+" , ranks='"+emp.getRanks()+
				"' , state="+emp.getState()+",age="+emp.getAge()+",job='"+emp.getJob()+"',degree='"+emp.getDegree()+"' where empid="+emp.getEmpId());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();//",birthday='"+emp.getBirthday()+
			}finally{
				Database.release(conn, stmt, null);
			}
	}
	
	public List<Employee> queryRetiredEmp(){
		List<Employee> list = new ArrayList<Employee>();
		
		Connection con = ConnectionFactory.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		/*
		 * sql语句待定
		 */
		String sql = "select * from t_employee ";		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				Employee emp = new Employee();
				emp.setEmpId(rs.getInt("empid"));
				emp.setEmpName(rs.getString("empname")!=(null)?rs.getString("empname"):"");
				emp.setEmpSex(rs.getInt("empsex"));
				emp.setAge(rs.getInt("age"));
				emp.setDegree(rs.getString("degree")!=(null)?rs.getString("degree"):"");
//				if(rs.getDate("birthday") != null){
//					String str = rs.getDate("birthday").toString();
//					String str1[] = str.split("-");
//					int i = Integer.parseInt(str1[0]);
//					String aa = (i+55)+"-"+str1[1]+"-"+str1[2];
//					Date date = Date.valueOf(aa);					
//					emp.setBirthday(date);
//				} else {
//					emp.setBirthday(null);
//				}
				emp.setJob(rs.getString("job")!=(null)?rs.getString("job"):"");
				
				list.add(emp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Database.release(con, stmt, rs);
		}
		return list;
	}
	
	public Employee queryRetiredEmpByName(String name){
		Connection con = ConnectionFactory.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		Employee emp = new Employee();
		/*
		 * sql语句待定
		 */
		String sql = "select * from t_employee where empname='"+ name +"'";		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);			
			if(rs.next()){					
				emp.setEmpId(rs.getInt("empid"));
				emp.setEmpName(rs.getString("empname")!=(null)?rs.getString("empname"):"");
				emp.setEmpSex(rs.getInt("empsex"));
				emp.setAge(rs.getInt("age"));
				emp.setDegree(rs.getString("degree")!=(null)?rs.getString("degree"):"");
				if(rs.getDate("birthday") != null){
					String str = rs.getDate("birthday").toString();
					String str1[] = str.split("-");
					int i = Integer.parseInt(str1[0]);
					String aa = (i+55)+"-"+str1[1]+"-"+str1[2];
					Date date = Date.valueOf(aa);					
					emp.setBirthday(date);
				} else {
					emp.setBirthday(null);
				}
				emp.setJob(rs.getString("job")!=(null)?rs.getString("job"):"");		
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Database.release(con, stmt, rs);
		}
		return emp;
	}
}
