package com.buaa.hr.manager.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.buaa.hr.entity.Contract;
import com.buaa.hr.manager.IContractManager;
import com.buaa.hr.untils.ConnectionFactory;
import com.buaa.hr.untils.Database;

public class ContractManager implements IContractManager{
public List printAllContract (){//打印所有的合同
	        List allContract = new ArrayList();
		
		Connection conn = null;
		ResultSet rs = null;
	    Statement stmt = null;
	    
	    conn = ConnectionFactory.getConnection();
	    try{
	    	stmt=conn.createStatement();
	    	rs=stmt.executeQuery("select *from t_contract");
			while(rs.next()){
				Contract contract = new Contract();
				contract.setCosId(rs.getInt("cosid"));
				contract.setEmpId(rs.getInt("empid"));
				contract.setCosNum(rs.getString("Cosnum"));
				contract.setStartDate(rs.getString("startdate"));
				contract.setEndDate(rs.getString("enddate"));
				contract.setJob(rs.getString("job"));
				contract.setContent(rs.getString("content"));
				allContract.add(contract);
			}
	    }catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
		return allContract;
	}
	public Contract printContractById(int cosId){//��ӡĳ��Ա���ĺ�ͬ
		Contract contract = new Contract();
		Connection conn = null;
		ResultSet rs = null;
	    Statement stmt = null;
	    
	    conn = ConnectionFactory.getConnection();
	    try{
	    	stmt=conn.createStatement();
	    	rs=stmt.executeQuery("select *from t_contract where cosid="+cosId);
			if(rs.next()){
				contract.setCosId(rs.getInt("cosid"));
				contract.setEmpId(rs.getInt("empid"));
				contract.setCosNum(rs.getString("Cosnum"));
				contract.setStartDate(rs.getString("startdate"));
				contract.setEndDate(rs.getString("enddate"));
				contract.setJob(rs.getString("job"));
				contract.setContent(rs.getString("content"));
			}
	    }catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
	return contract;
	}
	public void addContract( Contract con){//����Ա����ͬ
		Connection conn = null;
		Statement stmt = null;
		try{
		conn=ConnectionFactory.getConnection();
		stmt=conn.createStatement();
		
		stmt.executeUpdate("insert into t_contract values("+con.getCosId()+",'"+con.getEmpId()+"',"
				+con.getCosNum()+",'"+con.getStartDate()+"','"+con.getEndDate()+"','"+con.getJob()+"','"+
				con.getContent()+"')");
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, null);
		}
	}
	public void deleteContract(int cosId){//ɾ��Ա����ͬ
		Connection conn = null;
		Statement stmt = null;
	
		conn=ConnectionFactory.getConnection();
		try {
			stmt=conn.createStatement();
			stmt.executeUpdate("delete from t_contract where cosid='"+cosId+"'");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, null);
		}
	}
	public void alertContract(Contract con){//����Ա����ͬ
		Connection conn = null;
		Statement stmt = null;
		try{
		conn=ConnectionFactory.getConnection();
		stmt=conn.createStatement();
		
		stmt.executeUpdate("update  t_contract set empid="+con.getEmpId()+",cosnum="
				+con.getCosNum()+",startdate='"+con.getStartDate().toString()+"',enddate='"+con.getEndDate().toString()+"',job='"+con.getJob()+"',content='"+
				con.getContent()+"' where cosid="+con.getCosId());
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, null);
		}
	}
	

}
