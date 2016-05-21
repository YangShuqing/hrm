package com.buaa.hr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.Dept;
import com.buaa.hr.entity.User;
import com.buaa.hr.manager.impl.DeptManager;
import com.buaa.hr.manager.impl.UserManager;


public class DeptServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String actionCode =request.getParameter("actionCode");
		if(actionCode.equals("delete")){
			int deptId = Integer.parseInt(request.getParameter("deptid"));
			DeptManager deptManager =new DeptManager();
			deptManager.deleteDeptByDeptId(deptId);
			List depts = deptManager.queryAllDepts();
			request.setAttribute("depts", depts);
			request.getRequestDispatcher("/xitong01.jsp").forward(request, response);
		}else if(actionCode.equals("update")){
			int deptId =Integer.parseInt(request.getParameter("deptid"));
			DeptManager deptManager =new DeptManager();
			Dept dept = deptManager.queryDeptByDeptId(deptId);
			request.setAttribute("dept",dept);
			request.getRequestDispatcher("/deptUpdate.jsp").forward(request, response);
		}else if(actionCode.equals("deptUpdate")){
			int deptId = Integer.parseInt(request.getParameter("deptid"));
			Dept dept = new Dept();
			dept.setDeptId(deptId);
			dept.setDeptName(request.getParameter("deptname1"));
			dept.setDeptLevel(Integer.parseInt(request.getParameter("deptlevel1")));
			dept.setSuperiorDeptId(Integer.parseInt(request.getParameter("superiordeptid1")));
			DeptManager deptManager =new DeptManager();
			deptManager.updateDeptByDeptId(dept);
			List depts = deptManager.queryAllDepts();
			request.setAttribute("depts", depts);
			request.getRequestDispatcher("/xitong01.jsp").forward(request, response);
			
		}else if(actionCode.equals("queryAll")){
			DeptManager deptManager =new DeptManager();
			List depts = deptManager.queryAllDepts();
			request.setAttribute("depts", depts);
			request.getRequestDispatcher("/xitong01.jsp").forward(request, response);
		}else if(actionCode.equals("addDept")){
			request.getRequestDispatcher("/deptAdd.jsp").forward(request, response);
		}else if(actionCode.equals("addDeptSubmit")){
			Dept dept = new Dept();
			request.setCharacterEncoding("UTF-8"); //ÉùÃ÷requestµÄ×Ö·û¼¯  
			
			String deptname=new String(request.getParameter("deptname2").getBytes("ISO-8859-1"),"UTF-8");
			dept.setDeptId(Integer.parseInt(request.getParameter("deptid2")));
			dept.setDeptName(deptname);
			dept.setDeptLevel(Integer.parseInt(request.getParameter("deptlevel2")));
			dept.setSuperiorDeptId(Integer.parseInt(request.getParameter("superiordeptid2")));
			DeptManager deptManager =new DeptManager();
			deptManager.addDept(dept);
			List depts = deptManager.queryAllDepts();
			request.setAttribute("depts", depts);
			request.getRequestDispatcher("/xitong01.jsp").forward(request, response);
		}

	}

}
