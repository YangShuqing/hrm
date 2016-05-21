package com.buaa.hr.manager.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.buaa.hr.entity.Reward;
import com.buaa.hr.manager.IRewardManager;
import com.buaa.hr.untils.ConnectionFactory;
import com.buaa.hr.untils.Database;


public class RewardManager implements IRewardManager{
	public List printAllReward(){//打印所有奖惩信息
		List allReward=new ArrayList();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		conn=ConnectionFactory.getConnection();
		try {
			
			stmt=conn.createStatement();
			rs=stmt.executeQuery("select *from T_reward");
			while(rs.next()){
				Reward reward=new Reward();
				reward.setEmpid(rs.getInt("empid"));
				reward.setEmpName(rs.getString("empName"));
				reward.setRewcontent(rs.getString("rewcontent"));
				reward.setRewdate(rs.getString("rewdate"));
				reward.setRewid(rs.getInt("rewid"));
				reward.setRewtitle(rs.getString("rewtitle"));
				reward.setRewtype(rs.getString("rewtype"));
				allReward.add(reward);
			}
	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, rs);
		}
		return allReward;
	}
	public Reward printRewardById(int empId){//打印某个员工奖惩信息
		Reward reward = new Reward();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
	
		
		conn=ConnectionFactory.getConnection();
		
			try {
				stmt=conn.createStatement();
				rs=stmt.executeQuery("select *from T_reward where empid="+empId);
				if(rs.next()){
					reward.setEmpid(rs.getInt("empid"));
					reward.setEmpName(rs.getString("empName"));
					reward.setRewcontent(rs.getString("rewcontent"));
					reward.setRewdate(rs.getString("rewdate"));
					reward.setRewid(rs.getInt("rewid"));
					reward.setRewtitle(rs.getString("rewtitle"));
					reward.setRewtype(rs.getString("rewtype"));
					
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				Database.release(conn, stmt, rs);
			}
			return reward;
		
		
	}
	
	public void addReward(Reward reward){//增加奖惩信息
		Connection conn = null;
		Statement stmt = null;
		try{
		conn=ConnectionFactory.getConnection();
		stmt=conn.createStatement();
		
		stmt.executeUpdate("insert into t_reward values("+reward.getRewid()+","+reward.getEmpid()+",'"+
				reward.getEmpName()+"','"+reward.getRewtype()+"','"+reward.getRewdate()+"','"+reward.getRewtitle()
				+"','"+reward.getRewcontent()+"'");
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, null);
		}
		
		
	}
	public void deleteRewardById(int empId){//删除奖惩信息
		Connection conn = null;
		Statement stmt = null;
	
		conn=ConnectionFactory.getConnection();
		try {
			stmt=conn.createStatement();
			stmt.executeUpdate("delete from t_reward where empid='"+empId+"'");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Database.release(conn, stmt, null);
		}
	}
	public void alertReward(Reward reward){//更新奖惩信息
		Connection conn = null;
		Statement stmt = null;
	
		conn=ConnectionFactory.getConnection();
		
			try {
				stmt=conn.createStatement();
				stmt.executeUpdate("uptate t_employww set rewid="+reward.getRewid()+",empid="+reward.getEmpid()+",empname='"+
						reward.getEmpName()+"',rewtype='"+reward.getRewtype()+"',rewdate='"+reward.getRewdate()+"',rewtitle='"+reward.getRewtitle()
						+"',rewcontent='"+reward.getRewcontent()+"'");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				Database.release(conn, stmt, null);
			}
		
	}
}
