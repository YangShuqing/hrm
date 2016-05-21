package com.buaa.hr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.QuitEmployee;
import com.buaa.hr.manager.impl.QuitEmployeeManager;


public class SearchServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	
	 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		QuitEmployeeManager qm = new QuitEmployeeManager();
		List<QuitEmployee> quitEmps = qm.queryAllQuitEmps();
		request.setAttribute("quitEmps",quitEmps);
		request.getRequestDispatcher("/renshi-4.jsp").forward(request, response);
	
	}
	

}










