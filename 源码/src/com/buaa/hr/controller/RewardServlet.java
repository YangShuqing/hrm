package com.buaa.hr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.Employee;
import com.buaa.hr.entity.Reward;
import com.buaa.hr.manager.impl.RewardManager;

public class RewardServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public RewardServlet() {
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

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		RewardManager rewardmanager = new RewardManager();
		
		String actioncode = request.getParameter("actioncode");
		
		if(actioncode==null){
			List allReward = rewardmanager.printAllReward();
			request.setAttribute("allReward",allReward);
			request.getRequestDispatcher("reward.jsp").forward(request,response);
		}else if(actioncode.equals("edit")){
			int empid=Integer.parseInt(request.getParameter("empid"));
			Reward reward=rewardmanager.printRewardById(empid);
			request.setAttribute("reward", reward);
			request.getRequestDispatcher("rewardedit.jsp").forward(request, response);
			
		}
		else if(actioncode.equals("alter")){
			Reward reward=new Reward();
			int rewId = Integer.parseInt(request.getParameter("rewid"));
			int empId = Integer.parseInt(request.getParameter("empid"));
			String empName = request.getParameter("empname");
		    String rewtype = request.getParameter("rewtype");
		    String rewDate = request.getParameter("rewdate");
		    String rewTitle = request.getParameter("rewtitle");
		    String rewContent = request.getParameter("rewcontent");
		   reward.setRewid(rewId);
		   reward.setEmpid(empId);
		   reward.setRewcontent(rewContent);
		   reward.setRewdate(rewDate);
		   reward.setRewtitle(rewTitle);
		   reward.setRewtype(rewtype);
		   reward.setEmpName(empName);
		   rewardmanager.addReward(reward);
		   
		    List allReward = rewardmanager.printAllReward();
		    request.setAttribute("allReward",allReward);
		    request.getRequestDispatcher("reward.jsp").forward(request,response);
		}
		else if(actioncode.equals("delete")){
			int empid=Integer.parseInt(request.getParameter("empid"));
			rewardmanager.deleteRewardById( empid);
			List allReward = rewardmanager.printAllReward();
			request.setAttribute("allReward",allReward);
			request.getRequestDispatcher("reward.jsp").forward(request,response);
			
		}
		else if(actioncode.equals("add")){
			Reward reward = new Reward();
			int rewId = Integer.parseInt(request.getParameter("rewid"));
			int empId = Integer.parseInt(request.getParameter("empid"));
			String empName = request.getParameter("empname");
		    String rewtype = request.getParameter("rewtype");
		    String rewDate = request.getParameter("rewdate");
		    String rewTitle = request.getParameter("rewtitle");
		    String rewContent = request.getParameter("rewcontent");
		    reward.setRewid(rewId);
			   reward.setEmpid(empId);
			   reward.setRewcontent(rewContent);
			   reward.setRewdate(rewDate);
			   reward.setRewtitle(rewTitle);
			   reward.setRewtype(rewtype);
			   reward.setEmpName(empName);
			   rewardmanager.addReward(reward);
		    List allReward = rewardmanager.printAllReward();
		    request.setAttribute("allReward",allReward);
		    request.getRequestDispatcher("reward.jsp").forward(request,response);
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
