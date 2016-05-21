package com.buaa.hr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.Employee;
import com.buaa.hr.entity.PdfDocument;
import com.buaa.hr.manager.impl.EmpManager;
import com.buaa.hr.manager.impl.EmpTransfer;

public class EmpTransferServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public EmpTransferServlet() {
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

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		
		String actioncode = request.getParameter("actioncode");
		
		if(actioncode.equals("queryEmpById")){
			
			int empId = Integer.parseInt(request.getParameter("userId"));
			EmpTransfer et = new EmpTransfer();
			
			List empList = et.queryEmpById(empId);
			/*PdfDocument.setPdfDocument(empList);//!!!!!
			System.out.println(PdfDocument.getPdfDocument().size());
			*/			
			request.setAttribute("empList", empList);
			request.getRequestDispatcher("/renshi-2-1.jsp").forward(request,response);
			
		}else if(actioncode.equals("queryEmpByStr")){
			String str = new String(request.getParameter("str").getBytes("ISO-8859-1"),"UTF-8");
			
			EmpTransfer et = new EmpTransfer();
			List empList = et.queryEmpByStr(str);
			/*PdfDocument.setPdfDocument(empList);//!!!!!
			System.out.println(PdfDocument.getPdfDocument().size());*/
			
			request.setAttribute("empList", empList);
			request.getRequestDispatcher("/renshi-2-1.jsp").forward(request, response);
			
		}else if(actioncode.equals("trf")){
			int id = Integer.parseInt(request.getParameter("empId"));
			EmpManager em = new EmpManager();
			Employee emp = em.printEmpById(id);
			
			request.setAttribute("emp",emp);
			
			request.getRequestDispatcher("/renshi-2-2.jsp").forward(request,response);
			
		}else if(actioncode.equals("update")){
			EmpManager em = new EmpManager();
			int empId = Integer.parseInt(request.getParameter("empId"));
			Employee emp = em.printEmpById(empId);
			
			EmpTransfer et = new EmpTransfer();
			
			int ndeptid = Integer.parseInt(request.getParameter("ndeptid"));
			et.addEmpFormerDept(emp,ndeptid);
			et.updateEmpDept(emp, ndeptid);
			
			request.getRequestDispatcher("/renshi-2.html").forward(request,response);
			
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
