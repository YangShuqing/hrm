package com.buaa.hr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.Employee;
import com.buaa.hr.manager.impl.EmpManager;

public class RetiredEmpServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String actioncode = request.getParameter("actioncode");
		EmpManager em = new EmpManager();
		List<Employee> emplist = em.queryRetiredEmp();
		request.setAttribute("emplist", emplist);
		
		if(actioncode.equals("page1")){			
			request.getRequestDispatcher("/renshi-3.jsp").forward(request, response);
		
		} else if(actioncode.equals("page2")){			
			request.getRequestDispatcher("/renshi-3-1.jsp").forward(request, response);
		
		} else if(actioncode.equals("page3")){
			String empName = request.getParameter("empName");
			Employee ep = em.queryRetiredEmpByName(empName);
			request.setAttribute("ep", ep);
			request.getRequestDispatcher("/renshi-3-2.jsp").forward(request, response);
		
		} 
	}

}
