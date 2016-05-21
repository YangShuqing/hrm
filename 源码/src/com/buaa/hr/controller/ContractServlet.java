package com.buaa.hr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.Contract;
import com.buaa.hr.manager.impl.ContractManager;

public class ContractServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ContractServlet() {
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
		ContractManager contractmanager = new ContractManager();
		
		String actioncode = request.getParameter("actioncode");
		if(actioncode==null){
			List allContract = contractmanager.printAllContract();
			request.setAttribute("allContract", allContract);
			request.getRequestDispatcher("contract.jsp").forward(request, response);
		}else if(actioncode.equals("edit")){
			int cosId = Integer.parseInt(request.getParameter("cosid"));
			Contract contract = contractmanager.printContractById(cosId);
			request.setAttribute("contract", contract);
			request.getRequestDispatcher("contractedit.jsp").forward(request, response);
		}
		else if(actioncode.equals("alter")){
			Contract contract = new Contract();
			int cosId = Integer.valueOf(request.getParameter("cosid"));
			int EmpId = Integer.valueOf(request.getParameter("empid"));
			String cosNum = request.getParameter("connum");
			String startDate = request.getParameter("startcode");
			String endDate = request.getParameter("enddate");
			String job = request.getParameter("job");
			String content = request.getParameter("content");
			contract.setCosId(cosId);
			contract.setEmpId(EmpId);
			contract.setCosNum(cosNum);
			contract.setStartDate(startDate);
			contract.setEndDate(endDate);
			contract.setJob(job);
			contract.setContent(content);
			contractmanager.alertContract(contract);
			List allContract = contractmanager.printAllContract();
			request.setAttribute("allContract", allContract);
			request.getRequestDispatcher("contract.jsp").forward(request, response);
			
		}
		else if(actioncode.equals("delete")){
			int cosId = Integer.parseInt(request.getParameter("cosid"));
			contractmanager.deleteContract(cosId);
			List allContract = contractmanager.printAllContract();
			request.setAttribute("allContract", allContract);
			request.getRequestDispatcher("contract.jsp").forward(request, response);
		}
		else if(actioncode.equals("add")){
			Contract contract = new Contract();
			int cosId = Integer.parseInt(request.getParameter("cosid"));
			int EmpId = Integer.parseInt(request.getParameter("empid"));
			String cosNum = request.getParameter("connum");
			String startDate = request.getParameter("startcode");
			String endDate = request.getParameter("enddate");
			String job = request.getParameter("job");
			String content = request.getParameter("content");
			contract.setCosId(cosId);
			contract.setEmpId(EmpId);
			contract.setCosNum(cosNum);
			contract.setStartDate(startDate);
			contract.setEndDate(endDate);
			contract.setJob(job);
			contract.setContent(content);
			contractmanager.addContract(contract);
			List allContract = contractmanager.printAllContract();
			request.setAttribute("allcontract", allContract);
			request.getRequestDispatcher("contract.jsp").forward(request, response);
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
