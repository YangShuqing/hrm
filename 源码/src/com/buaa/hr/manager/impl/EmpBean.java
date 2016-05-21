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

public class EmpBean {
	private Statement stmt = null;
	private ResultSet rs = null;
	private Connection conn = null;
	private int pageSize = 10; // 一页显示多少条记录
	private int rowCount = 0; // 共有多少条记录
	private int pageCount = 0; // 共有多少页

	// 返回分页的总的页数

	public int getPageCount() {

		try {
			// 得到连接
			conn = new ConnectionFactory().getConnection();
			// 2:创建Statement
			stmt = conn.createStatement();

			// 查询
			rs = stmt.executeQuery("select count(*) from T_EMPLOYEE");

			// 注意一定要，next()
			if (rs.next()) {
				rowCount = rs.getInt(1);
			}
			// 计算pageCount

			if (rowCount % pageSize == 0) {
				pageCount = rowCount / pageSize;
			} else {
				pageCount = rowCount / pageSize + 1;
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			Database.release(conn, stmt, rs);
		}

		return pageCount;
		
	}
	
	//得到用户需要显示的用户信息（分页）

		public  List getEmpByPage(int pageNow)
		{
			List allemp = new ArrayList();
			try {
				//得到连接
				conn = new ConnectionFactory().getConnection();
				// 2:创建Statement
				stmt = conn.createStatement();
		   		
		   		
		   		//查询出需要显示的记录
		   		//rs=stmt.executeQuery("select top "+pageSize+" * from users where userId not in (select top "+pageSize*(pageNow-1)+" userId from users)");
		   		
		   		//sql = "select * from (select p.*, rownum rn from (select * from product where name like ? order by productid) p where rownum<=?) where rn >?";
		   		String sql ="select * from (select p.*,rownum rn from (select * from T_EMPLOYEE order by EmpId) p where rownum <= "+pageSize*(pageNow)+" )where rn > "+pageSize*(pageNow-1)+"";
				rs=stmt.executeQuery(sql);
		   		//开始讲rs封装到ArrayList
		   		while(rs.next())
		   		{
		   			Employee emp = new Employee();
					emp.setEmpId(rs.getInt("empid"));
					emp.setEmpName(rs.getString("empname"));
					emp.setEmpSex(rs.getInt("empsex"));
					emp.setSchool(rs.getString("school"));
					emp.setDeptId(rs.getInt("deptid"));
					emp.setJob(rs.getString("job"));
					emp.setRanks(rs.getString("ranks"));
					emp.setState(rs.getInt("state"));
					// emp.setBirthday(rs.getDate("birthday"));
					emp.setDegree(rs.getString("degree"));

					emp.setAge(rs.getInt("age"));
					allemp.add(emp);
		   			//添加到al结果集
		   			//al.add(ub);
		   		}
		   		
		   		
		   		
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally{
				Database.release(conn, stmt, rs);
			}
			//return al;
			return allemp;
		}
		

	public List printAllEmp() {// 打印所有的员工信息
		List allemp = new ArrayList();

		Connection conn = null;

		Statement stmt = null;
		ResultSet rs = null;

		conn = ConnectionFactory.getConnection();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select *from T_EMPLOYEE order by empid");
			while (rs.next()) {
				Employee emp = new Employee();
				emp.setEmpId(rs.getInt("empid"));
				emp.setEmpName(rs.getString("empname"));
				emp.setEmpSex(rs.getInt("empsex"));
				emp.setSchool(rs.getString("school"));
				emp.setDeptId(rs.getInt("deptid"));
				emp.setJob(rs.getString("job"));
				emp.setRanks(rs.getString("ranks"));
				emp.setState(rs.getInt("state"));
				// emp.setBirthday(rs.getDate("birthday"));
				emp.setDegree(rs.getString("degree"));

				emp.setAge(rs.getInt("age"));
				allemp.add(emp);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Database.release(conn, stmt, rs);
		}
		return allemp;
	}

}
