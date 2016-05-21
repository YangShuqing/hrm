package com.buaa.hr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.Archive;
import com.buaa.hr.manager.impl.ArchiveManager;

public class ArchiveServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ArchiveServlet() {
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
		ArchiveManager archivemanager = new ArchiveManager();
		
		String actioncode = request.getParameter("actioncode");
		if(actioncode==null){
			List allArchive = archivemanager.printAllArchive();
			request.setAttribute("allArchive",allArchive);
			request.getRequestDispatcher("archive.jsp").forward(request,response);
		}else if(actioncode.equals("edit")){
			int empid = Integer.parseInt(request.getParameter("empid"));
			Archive arc = archivemanager.printArchiveById(empid);
			request.setAttribute("arc",arc);
			request.getRequestDispatcher("archiveedit.jsp").forward(request,response);
			
		}
		else if(actioncode.equals("alter")){
			Archive arc = new Archive();
			int arcId = Integer.valueOf(request.getParameter("arcid"));
			int empId = Integer.valueOf(request.getParameter("empid"));
			String arcNum = request.getParameter("arcnum");
			String arcName = request.getParameter("arcname");
			String summary = request.getParameter("summary");
			String remark = request.getParameter("remark");
			int archiveClassId = Integer.valueOf(request.getParameter("archiveclassid"));
			arc.setArcId(arcId);
			arc.setEmpId(empId);
			arc.setArcNum(arcNum);
			arc.setArcName(arcName);
			arc.setSummary(summary);
			arc.setRemark(remark);
			arc.setArchiveClassId(archiveClassId);
			archivemanager.alterArchiveById(arc);
			List allArchive = archivemanager.printAllArchive();
			request.setAttribute("allArchive",allArchive);
			request.getRequestDispatcher("archive.jsp").forward(request,response);
		}
		else if(actioncode.equals("delete")){
			int arcId = Integer.parseInt(request.getParameter("empid"));
			archivemanager.deleteArchiveById(arcId);
			List allArchive = archivemanager.printAllArchive();
			request.setAttribute("allArchive",allArchive);
			request.getRequestDispatcher("archive.jsp").forward(request,response);
		}
		else if(actioncode.equals("add")){
			Archive arc = new Archive();
			int arcId = Integer.parseInt(request.getParameter("arcid"));
			int empId = Integer.parseInt(request.getParameter("empid"));
			String arcNum = request.getParameter("arcnum");
			String arcName = request.getParameter("arcname");
			String summary = request.getParameter("summary");
			String remark = request.getParameter("remark");
			int archiveClassId = Integer.valueOf(request.getParameter("archiveclassid"));
			arc.setArcId(arcId);
			arc.setEmpId(empId);
			arc.setArcNum(arcNum);
			arc.setArcName(arcName);
			arc.setSummary(summary);
			arc.setRemark(remark);
			arc.setArchiveClassId(archiveClassId);
			archivemanager.addArchive(arc);
			List allArchive = archivemanager.printAllArchive();
			request.setAttribute("allArchive",allArchive);
			request.getRequestDispatcher("archive.jsp").forward(request,response);
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
