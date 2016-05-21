package com.buaa.hr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.Role;
import com.buaa.hr.entity.User;
import com.buaa.hr.manager.impl.RoleManager;
import com.buaa.hr.manager.impl.UserManager;


public class RoleServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String actionCode = request.getParameter("actionCode");

		
		if(actionCode.equals("delete")){
			int roleId =Integer.parseInt(request.getParameter("roleid"));
			RoleManager roleManager = new RoleManager();
			roleManager.deleteRoleByRoleId(roleId);
			//Ë¢ÐÂ
			List roles  = roleManager.queryAllRoles();
			request.setAttribute("roles", roles);
			request.getRequestDispatcher("/xitong02.jsp").forward(request, response);
			
		}else if(actionCode.equals("queryAllRoles")){
			RoleManager roleManager = new RoleManager();
			List roles = roleManager.queryAllRoles();
			request.setAttribute("roles", roles);
			request.getRequestDispatcher("/xitong02.jsp").forward(request, response);
		}else if(actionCode.equals("addRole")){
			request.getRequestDispatcher("/roleAdd.jsp").forward(request, response);
		}else if(actionCode.equals("addRoleSubmit")){
			Role role = new Role();
			role.setRoleId(Integer.parseInt(request.getParameter("roleid2")));
			role.setRoleName(request.getParameter("rolename2"));
			RoleManager roleManager = new RoleManager();
			roleManager.addRole(role);
			List roles =roleManager.queryAllRoles();
			request.setAttribute("roles", roles);
			request.getRequestDispatcher("/xitong02.jsp").forward(request, response);
		}
		
		
		
	}
}
