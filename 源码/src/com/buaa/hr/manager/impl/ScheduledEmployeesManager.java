package com.buaa.hr.manager.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.buaa.hr.entity.ScheduledEmployees;
import com.buaa.hr.untils.ConnectionFactory;
import com.buaa.hr.untils.Database;

public class ScheduledEmployeesManager {

	public List queryAllScheduledEmployees()  {
		// TODO Auto-generated method stub
		List empList = new ArrayList();
		Statement stmt = null;
		ResultSet rs = null;
		Connection conn = ConnectionFactory.getConnection();

		try {
			stmt = conn.createStatement();

			rs = stmt.executeQuery("select * from T_TRANSFERRECORD order by empid"); // 查询所有调动员工

			ScheduledEmployees scheduledEmployees = null;

			while (rs.next()) {

				scheduledEmployees = new ScheduledEmployees();
				scheduledEmployees.setEmployeeId(rs.getInt("empid"));// 员工编号
				scheduledEmployees.setEmployeeName(rs.getString("empname"));// 员工姓名
				String tempSex = rs.getString("empsex");
				
				if (tempSex.equals("1")) {
					scheduledEmployees.setEmployeeSex("男");// 员工性别
				} else {
					scheduledEmployees.setEmployeeSex("女");
				}
				
			    //scheduledEmployees.setEmployeeRank(rs.getString("ranks"));// 员工职称
				scheduledEmployees.setScheduleTime(rs.getString("trftime"));// 调度时间
				scheduledEmployees.setBeforeSchedule(rs.getString("formerdepid"));// 调动前部门
				scheduledEmployees.setAfterSchedule(rs.getString("depid"));// 调动后部门
				//scheduledEmployees.setReason(rs.getString("reason"));// 调动原因

				empList.add(scheduledEmployees);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			Database.release(conn, stmt, rs);
		}

		return empList;
	}

}
