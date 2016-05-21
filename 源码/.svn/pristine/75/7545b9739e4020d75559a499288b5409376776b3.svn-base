package com.buaa.hr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.QuitEmployee;
import com.buaa.hr.manager.impl.QuitEmployeeManager;



public class QuitEmployeeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String actionCode = request.getParameter("actionCode");
		//System.out.println(actionCode);

		if(actionCode.equals("delete")){
			
			
			int recordId = Integer.parseInt(request.getParameter("recordId"));
			
			QuitEmployeeManager qem = new QuitEmployeeManager();
			
			qem.deleteEmployeeById(recordId);
			
			
			//Ò³ÃæË¢ÐÂ
			List<QuitEmployee> quitEmps = qem.queryAllQuitEmps();
			
			request.setAttribute("quitEmps",quitEmps);
			
			request.getRequestDispatcher("/renshi-4.jsp").forward(request, response);
			
				
		}else if(actionCode.equals("update")){
				
			int recordId = Integer.parseInt(request.getParameter("recordId"));
			
			QuitEmployeeManager qem = new QuitEmployeeManager();
			
			QuitEmployee qe = QuitEmployeeManager.queryQuitEmployeeById(recordId);
			
			request.setAttribute("qe",qe);
			
			request.getRequestDispatcher("/update.jsp").forward(request, response);
			
			
		}
		
	}

}
