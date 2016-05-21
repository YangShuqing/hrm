package com.buaa.hr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.manager.impl.EmpBean;

public class EmpServlet2 extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public EmpServlet2() {
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
	try {
			
			int pageNow=Integer.parseInt(request.getParameter("pageNow"));
			//调用UserBeanCl
			//UserBeanCl ubc=new UserBeanCl();
			EmpBean eb = new EmpBean();
			List allemp = eb.getEmpByPage(pageNow);
			System.out.println("123");
			System.out.println(allemp);
			//准备好
			//ArrayList al=ubc.getUserByPage(pageNow);
			int pageCount=eb.getPageCount();
			
			//将al,pageCount,pageNow放入到request中
			request.setAttribute("allemp", allemp);
			request.setAttribute("pageCount", pageCount+"");
			request.setAttribute("pageNow",pageNow+"");
			//因为sendRedirect方法的效率不高。所以在软件公司厂使用 转发的方法
			//这种方法的效率比较高，同事request中的对象还可以在下一个页面使用
			request.getRequestDispatcher("emp3.jsp").forward(request, response);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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
