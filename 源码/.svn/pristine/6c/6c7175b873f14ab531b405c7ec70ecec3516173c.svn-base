package com.buaa.hr.manager.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.buaa.hr.entity.QuitEmployee;
import com.buaa.hr.untils.ConnectionFactory;
import com.buaa.hr.untils.Database;





public class QuitEmployeeManager {
	public List<QuitEmployee> queryAllQuitEmps(){
		List<QuitEmployee> quitEmps = new ArrayList<QuitEmployee>();
		Statement stmt = null;
		ResultSet rs = null;
		Connection conn = ConnectionFactory.getConnection();
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from t_formeremp order by recordid ");
			QuitEmployee qe = null;
			while(rs.next()){
				qe = new QuitEmployee();
				qe.setRecordId(rs.getInt("recordid"));
				qe.setEmpName(rs.getString("empname"));
				qe.setEmpSex(rs.getString("empsex"));
				qe.setDeparturedate(rs.getDate("departuretime"));
				qe.setDepid(rs.getInt("depid"));
				qe.setRanks(rs.getString("ranks"));
				qe.setReason(rs.getString("reason"));
				quitEmps.add(qe);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Database.release(conn,stmt,rs);
		}
		return 	quitEmps;
	}
	
	public void deleteEmployeeById(int RecordId){
		
		Connection conn = ConnectionFactory.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			
			stmt = conn.createStatement();
			
			stmt.executeUpdate("delete from t_formeremp where recordid=" + RecordId);
			//MVC
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}finally{
			Database.release(conn,stmt,rs);
		}
			
	}
	public static QuitEmployee queryQuitEmployeeById(int recordId){
		
		QuitEmployee qe = new QuitEmployee();
		
		Connection conn = ConnectionFactory.getConnection();
		
		try {
			Statement stmt = conn.createStatement();
	
			ResultSet rs = stmt.executeQuery("select * from t_formeremp where recordid="+recordId+"order by recordid");
			
			if(rs.next()){
				
				qe.setRecordId(rs.getInt("recordid"));
				qe.setEmpName(rs.getString("empname"));
				qe.setEmpSex(rs.getString("empsex"));
				qe.setDeparturedate(rs.getDate("departuretime"));
				qe.setDepid(rs.getInt("depid"));
				qe.setRanks(rs.getString("ranks"));
				qe.setReason(rs.getString("reason"));
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return qe;
	}
	public List<QuitEmployee> queryQuitEmployeeByCondition(String year,int depId){
		List<QuitEmployee> quitEmps = new ArrayList<QuitEmployee>();
		Statement stmt = null;
		ResultSet rs = null;
		Connection conn = ConnectionFactory.getConnection();
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from t_formeremp where (to_char(departuretime ,'yyyy')="+year+ "and (depid="+depId+"order by recordid");
			QuitEmployee qe = null;
			while(rs.next()){
				qe = new QuitEmployee();
				qe.setRecordId(rs.getInt("recordid"));
				qe.setEmpName(rs.getString("empname"));
				qe.setEmpSex(rs.getString("empsex"));
				qe.setDeparturedate(rs.getDate("departuretime"));
				qe.setDepid(rs.getInt("depid"));
				qe.setRanks(rs.getString("ranks"));
				qe.setReason(rs.getString("reason"));
				quitEmps.add(qe);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Database.release(conn,stmt,rs);
		}
		return 	quitEmps;
	}
}










