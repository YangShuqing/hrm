package com.buaa.hr.manager.impl;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.buaa.hr.entity.Dept;
import com.buaa.hr.manager.IDemoManager;
import com.buaa.hr.untils.ConnectionFactory;
import com.buaa.hr.untils.Database;

public class DemoManager implements IDemoManager {

	public List demoQueryAll() {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		Connection conn = null;
		Statement stmt = null;
		List depts = new ArrayList();

		conn = ConnectionFactory.getConnection();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from t_dept order by deptid ");

			while (rs.next()) {
				Dept dept = new Dept();
				dept.setDeptId(rs.getInt("deptid"));
				dept.setDeptName(rs.getString("deptname"));
				dept.setDeptLevel(rs.getInt("deptlevel"));
				dept.setSuperiorDeptId(rs.getInt("superiordeptid"));
				depts.add(dept);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Database.release(conn, stmt, rs);
		}
		return depts;
	}

	public void demoDel(int deptid) {
		// TODO Auto-generated method stub

	}

}
