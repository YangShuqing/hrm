package com.buaa.hr.manager.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.buaa.hr.entity.Archive;
import com.buaa.hr.entity.Employee;
import com.buaa.hr.manager.IArchiveManager;
import com.buaa.hr.untils.ConnectionFactory;
import com.buaa.hr.untils.Database;

public class ArchiveManager implements IArchiveManager{
	public List printAllArchive(){//打印所有员工档案信息
		List allArchive=new ArrayList();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		conn=ConnectionFactory.getConnection();
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery("select *from T_archive");
			while(rs.next()){
				Archive arc=new Archive();
				arc.setArchiveClassId(rs.getInt("archiveclassid"));
				arc.setArcId(rs.getInt("arcid"));
				arc.setArcName(rs.getString("arcname"));
				arc.setArcNum(rs.getString("arcnum"));
				arc.setSummary(rs.getString("summary"));
				arc.setEmpId(rs.getInt("empid"));
				arc.setRemark(rs.getString("remark"));
				allArchive.add(arc);
			}
	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
		return allArchive;
	
	}
	
	
	public Archive printArchiveById(int empid){//打印某个员工档案信息
		
		Connection conn = null;
		Archive arc=new Archive();
		Statement stmt = null;
		ResultSet rs = null;
	
		
		conn=ConnectionFactory.getConnection();
		
			try {
				stmt=conn.createStatement();
				rs=stmt.executeQuery("select *from T_Archive where empid="+empid);
				if(rs.next()){
					arc.setArchiveClassId(rs.getInt("archiveClassId"));
					arc.setArcId(rs.getInt("arcId"));
					arc.setArcName(rs.getString("arcName"));
					arc.setArcNum(rs.getString("arcNum"));
					arc.setSummary(rs.getString("summary"));
					arc.setEmpId(rs.getInt("empId"));
					arc.setRemark(rs.getString("remark"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				Database.release(conn, stmt, rs);
			}
			return arc;
			
		
	}
	public void addArchive(Archive arc){//增加员工档案
		Connection conn = null;
		Statement stmt = null;
		try{
		conn=ConnectionFactory.getConnection();
		stmt=conn.createStatement();
		
		stmt.executeUpdate("insert into t_Archive values("+arc.getArcId()+","+arc.getEmpId()+","+arc.getArcNum()+",'"+arc.getArcName()+"','"
				+arc.getSummary()+"','"+arc.getRemark()+"',"+arc.getArchiveClassId()+")");
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, null);
		}
		
	}
	public void deleteArchiveById(int empid){//删除员工档案
		Connection conn = null;
		Statement stmt = null;
	
		conn=ConnectionFactory.getConnection();
		try {
			stmt=conn.createStatement();
			stmt.executeUpdate("delete from t_Archive where empid="+empid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, null);
		}
		
		
	}
	public void alterArchiveById(Archive arc){//更新员工档案呢
		Connection conn = null;
		Statement stmt = null;
	
		conn=ConnectionFactory.getConnection();
		
			try {
				stmt=conn.createStatement();
				stmt.executeUpdate("update t_Archive set arcid="+arc.getArcId()+",arcname='"+arc.getArcName()+"',summary='"
						+arc.getSummary()+"',remark='"+arc.getRemark()+"',archiveclassid="+arc.getArchiveClassId()+",arcnum="+arc.getArcNum() +"where empid="+arc.getEmpId());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				Database.release(conn, stmt, null);
			}
	}





	
}

