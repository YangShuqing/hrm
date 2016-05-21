package com.buaa.hr.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.Employee;
import com.buaa.hr.manager.impl.EmpManager;
import com.buaa.hr.manager.impl.EmpTransfer;

public class EmpServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public EmpServlet() {
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
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			EmpManager empmanager=new EmpManager();
			
			
			
			String actioncode=request.getParameter("actioncode");
			if(actioncode==null){
				 List allemployee=empmanager.printAllEmp();
				 request.setAttribute("allemployee", allemployee);
				 request.getRequestDispatcher("employee.jsp").forward(request, response);
			}else if(actioncode.equals("edit")){
				request.setCharacterEncoding("UTF-8"); 
				int empid=Integer.parseInt(request.getParameter("empid"));
				Employee employee=empmanager.printEmpById(empid);
				request.setAttribute("employee", employee);
				request.getRequestDispatcher("employeeedit.jsp").forward(request, response);
				
			}
			
			else if(actioncode.equals("alter")){
				
				Employee employee=new Employee();
		
				int empId=Integer.valueOf(request.getParameter("empid"));
			
				 String empName=request.getParameter("empname");
				 int empSex=Integer.valueOf(request.getParameter("empsex"));
				 String school=request.getParameter("school");
				 int deptId=Integer.valueOf(request.getParameter("deptid"));
				 String job=request.getParameter("job");
				 String ranks=request.getParameter("ranks");
				 int state=Integer.valueOf(request.getParameter("state"));
				 String degree=request.getParameter("degree");
				 int age=Integer.valueOf(request.getParameter("age"));
				 
					
//					try {
//						SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
//						Date birthday;
//						birthday = sdf.parse(request.getParameter("birthday"));
//						employee.setBirthday(birthday);
//					} catch (ParseException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
				employee.setAge(age);
				employee.setDegree(degree);
				 employee.setDeptId(deptId);
				 employee.setEmpId(empId);
				 employee.setEmpName(empName);
				 employee.setEmpSex(empSex);
				 employee.setJob(job);
				 employee.setRanks(ranks);
				 employee.setSchool(school);
				 employee.setState(state);
				 empmanager.alterEmp(employee);
				 List allemployee=empmanager.printAllEmp();
					request.setAttribute("allemployee", allemployee);
					request.getRequestDispatcher("employee.jsp").forward(request, response);
			}
			else if(actioncode.equals("delete")){
				int empid=Integer.parseInt(request.getParameter("empid"));
				empmanager.deleteEmpById(empid);
				List allemployee=empmanager.printAllEmp();
				request.setAttribute("allemployee", allemployee);
				request.getRequestDispatcher("employee.jsp").forward(request, response);
			}
			else if(actioncode.equals("add")){
				Employee employee=new Employee(); 
				int empId=Integer.parseInt(request.getParameter("empid"));
				 String empName=request.getParameter("empname");
				 int empSex=Integer.parseInt(request.getParameter("empsex"));
				 String school=request.getParameter("school");
				 int deptId=Integer.parseInt(request.getParameter("deptid"));
				 String job=request.getParameter("job");
				 String ranks=request.getParameter("ranks");
				 int state=Integer.parseInt(request.getParameter("state"));
				 String degree=request.getParameter("degree");
				 int age=Integer.valueOf(request.getParameter("age"));
				 
//					Date birthday;
//					try {
//						SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
//						birthday = sdf.parse(request.getParameter("birthday"));
//						employee.setBirthday(birthday);
//					} catch (ParseException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
				employee.setAge(age);
				employee.setDegree(degree);
				 employee.setDeptId(deptId);
				 employee.setEmpId(empId);
				 employee.setEmpName(empName);
				 employee.setEmpSex(empSex);
				 employee.setJob(job);
				 employee.setRanks(ranks);
				 employee.setSchool(school);
				 employee.setState(state);
				 empmanager.addEmp(employee);
				 List allemployee=empmanager.printAllEmp();
				 request.setAttribute("allemployee", allemployee);
				 request.getRequestDispatcher("employee.jsp").forward(request, response);
				
			}
			else if(actioncode.equals("queryEmpById")){
				String empid=request.getParameter("empid");
				if(empid.equals("")){
					List allemployee=empmanager.printAllEmp();
					 request.setAttribute("allemployee", allemployee);
					 request.getRequestDispatcher("employee.jsp").forward(request, response);
					
					 
				}else{
					int empId = Integer.parseInt(empid);
					
					
					 List allemployee=empmanager.queryEmpById(empId);
					 
						request.setAttribute("allemployee", allemployee);
						request.getRequestDispatcher("employee.jsp").forward(request, response);
					
				
			}
			}else if(actioncode.equals("queryEmpByStr")){
				
				String str = request.getParameter("str");
				List allemployee=empmanager.queryEmpByStr(str);
				request.setAttribute("allemployee", allemployee);
				 request.getRequestDispatcher("employee.jsp").forward(request, response);
			}
			else if(actioncode.equals("deptid")){
				if(request.getParameter("deptid").equals("")){
					 List allemployee=empmanager.printAllEmp();
					 request.setAttribute("allemployee", allemployee);
					 request.getRequestDispatcher("employee.jsp").forward(request, response);
				
				}else{
					int deptid =Integer.parseInt( request.getParameter("deptid"));
					List allemployee=empmanager.queryAllEmpByDeptId(deptid);
					request.setAttribute("allemployee", allemployee);
					 request.getRequestDispatcher("employee.jsp").forward(request, response);
					
				}
				
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
