package com.buaa.hr.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.User;
import com.buaa.hr.manager.impl.UserManager;
import com.buaa.hr.untils.Md5;

public class LoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginServlet() {
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
		User user = new User();
		Md5 md5 = new Md5();
		String password = request.getParameter("password");
		user.setUserName(request.getParameter("userName"));
		user.setPassWord(md5.GetMD5Code(password));
		UserManager userManager = new UserManager();
		
		String checkcode=request.getParameter("checkCode");
		boolean flag = false;
		if(userManager.isValid(user)&&checkcode.equalsIgnoreCase((String)session.getAttribute("randCheckCode"))){
			flag = true;
		}
		
		
		
		if(flag){
			request.getRequestDispatcher("main.html").forward(request, response);
		}else{
			request.getRequestDispatcher("fail.html").forward(request, response);
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
