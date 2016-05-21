package com.buaa.hr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.interfaces.RSAKey;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.Employee;
import com.buaa.hr.manager.impl.EmpManager;

public class ExportExcelServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ExportExcelServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EmpManager empManager =new EmpManager();
		List empList = empManager.printAllEmp();
		//List<PersonVO> listPerson = new ArrayList<PersonVO>();
		request.setAttribute("empList", empList);
		request.getRequestDispatcher("empList.jsp").forward(request, response);
	
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
