package com.buaa.hr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.manager.impl.DemoManager;
import com.buaa.hr.manager.impl.DeptManager;

public class DemoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DemoServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

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
		doPost(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String actionCode =request.getParameter("actionCode");
		if(actionCode.equals("queryAll")){
			DemoManager deptManager = new DemoManager();
			List depts = deptManager.demoQueryAll();
			request.setAttribute("depts", depts);
			request.getRequestDispatcher("/demo.jsp").forward(request, response);
		}else if(actionCode.equals("del")){
			
		}
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
