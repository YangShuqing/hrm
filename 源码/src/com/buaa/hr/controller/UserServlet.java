package com.buaa.hr.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.User;
import com.buaa.hr.manager.impl.UserManager;
import com.buaa.hr.untils.ConnectionFactory;
import com.buaa.hr.untils.Database;
import com.buaa.hr.untils.Md5;

public class UserServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String actionCode =request.getParameter("actionCode");
		if(actionCode.equals("delete")){
			int userId = Integer.parseInt(request.getParameter("userId"));
			UserManager userManager =new UserManager();
			userManager.deleteUserByUserId(userId);
			List users = userManager.queryAllUsers();
			request.setAttribute("users", users);
			request.getRequestDispatcher("/xitong03.jsp").forward(request, response);
		}else if(actionCode.equals("update")){
			int userId =Integer.parseInt(request.getParameter("userId"));
			UserManager userManager =new UserManager();
			User user = userManager.queryUserByUserId(userId);
			request.setAttribute("user",user);
			request.getRequestDispatcher("/userUpdate.jsp").forward(request, response);
		}else if(actionCode.equals("userUpdate")){
			int userId = Integer.parseInt(request.getParameter("userId"));
			User user = new User();
			user.setUserId(userId);
			Md5 md5 =new Md5();
			String password = request.getParameter("password1");
			user.setUserName(request.getParameter("username1"));
			user.setRoleId(Integer.parseInt(request.getParameter("roleid1")));
			user.setPassWord(md5.GetMD5Code(password));
			UserManager userManager =new UserManager();
			userManager.updateUserByUserId(user);
			List users =userManager.queryAllUsers();
			request.setAttribute("users", users);
			request.getRequestDispatcher("/xitong03.jsp").forward(request, response);
		}else if(actionCode.equals("queryAll")){
			UserManager userManager =new UserManager();
			List users = userManager.queryAllUsers();
			request.setAttribute("users", users);
			request.getRequestDispatcher("/xitong03.jsp").forward(request, response);
		}else if(actionCode.equals("addUser")){
			request.getRequestDispatcher("/userAdd.jsp").forward(request, response);
		}else if(actionCode.equals("addUserSubmit")){
			User user = new User();
			Md5 md5 =new Md5();
			String password = request.getParameter("password2");
			user.setUserId(Integer.parseInt(request.getParameter("userid2")));
			user.setUserName(request.getParameter("username2"));
			user.setPassWord(md5.GetMD5Code(password));
			user.setRoleId(Integer.parseInt(request.getParameter("roleid2")));
			UserManager userManager =new UserManager();
			userManager.addUser(user);
			List users =userManager.queryAllUsers();
			request.setAttribute("users", users);
			request.getRequestDispatcher("/xitong03.jsp").forward(request, response);
		}else if(actionCode.equals("deleteAll")){
			
		//==============批量删除代码
		String  boxid[]    =  request.getParameterValues("boxid"); 
		//System.out.println(boxid);
		for(String s:boxid){
			System.out.println(s);
		}
		String  boxIdAll  =  "";  
		if  (boxid!=null ) {  
		     for(int  i=0;i<boxid.length;i++)  {  
		    	 boxIdAll = boxIdAll + boxid[i] + ","  ;  
		     }  
		     boxIdAll  =  boxIdAll.substring(0, boxIdAll.length()-1);  

		    String  sql  =  "delete from  t_user  where  userid  in("  +  boxIdAll+  ")";
		    System.out.println(sql);

		    //执行sql语句
		    Connection conn =ConnectionFactory.getConnection();
			Statement stmt=null;
			ResultSet rs =null;
			try {
				stmt = conn.createStatement();
				rs =stmt.executeQuery(sql);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				Database.release(conn, stmt, rs);
			}

		} 
		UserManager userManager =new UserManager();
		List users =userManager.queryAllUsers();
		request.setAttribute("users", users);
		request.getRequestDispatcher("/xitong03.jsp").forward(request, response);
	}
	}

}
