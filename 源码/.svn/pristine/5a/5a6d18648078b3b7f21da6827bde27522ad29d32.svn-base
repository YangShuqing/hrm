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


public class SearchByServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String year = request.getParameter("applyyear");
		int depId = Integer.parseInt(request.getParameter("depId"));
		QuitEmployeeManager qm = new QuitEmployeeManager();
		List<QuitEmployee> quitEmps = qm.queryQuitEmployeeByCondition(year,depId);
		request.setAttribute("quitEmps",quitEmps);
		request.getRequestDispatcher("/renshi-4.jsp").forward(request, response);
		
		
	}

}
