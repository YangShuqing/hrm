package com.buaa.hr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buaa.hr.entity.Resume;
import com.buaa.hr.manager.impl.ResumeManager;

public class ResumeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doPost(request ,response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String actionCode=request.getParameter("actionCode");
		
		if(actionCode.equals("printAllResume")){
			
			ResumeManager resumeManager=new ResumeManager();
			
			List resumes=resumeManager.printAllResume();
			
			request.setAttribute("resumes", resumes);
			
			request.getRequestDispatcher("/resume.jsp").forward(request, response);
		}else if(actionCode.equals("printResumeBid")){
			
			ResumeManager resumeManager=new ResumeManager();
			
			Resume resume=resumeManager.printResumeById(Integer.valueOf(request.getParameter("empId")));
			request.setAttribute("resume", resume);
			request.getRequestDispatcher("/resume.jsp").forward(request, response);
			
		}else if(actionCode.equals("add")){
			int resumeId=Integer.parseInt(request.getParameter("resumeId"));
			int empId=Integer.parseInt(request.getParameter("empId"));
			String empName=request.getParameter("empName");
			int deptId=Integer.parseInt(request.getParameter("deptId"));
			String job=request.getParameter("job");
			String school=request.getParameter("school");
			String jobContent=request.getParameter("jobContent");
			int  trainscore=Integer.valueOf(request.getParameter("trainscore"));
			String  startDate=request.getParameter("startDate");
			String endDate=request.getParameter("endDate");
			
			ResumeManager resumeManager=new ResumeManager();
			Resume resume=new Resume();
			
			resume.setEmpId(empId);
			resume.setEmpName(empName);
			resume.setDeptId(deptId);
			resume.setJob(job);
			resume.setSchool(school);
			resume.setJobContent(jobContent);
			resume.setTrainscore(trainscore);
			resume.setStartDate(startDate);
			resume.setEndDate(endDate);
			
			resumeManager.addResume(resume);
			List resumes=resumeManager.printAllResume();
			
			request.setAttribute("resumes", resumes);
			request.getRequestDispatcher("/resume.jsp").forward(request, response);
			
		}else if(actionCode.equals("delete")){
			
			int empId=Integer.parseInt(request.getParameter("empId"));
			ResumeManager resumeManager=new ResumeManager();
			
			resumeManager.deleteResume(empId);
			
			List resumes=resumeManager.printAllResume();
			
			request.setAttribute("resumes", resumes);
			
			request.getRequestDispatcher("/resume.jsp").forward(request, response);
		}else if(actionCode.equals("update")){
			int resumeId=Integer.parseInt(request.getParameter("resumeId"));
			int empId=Integer.parseInt(request.getParameter("empId"));
			String empName=request.getParameter("empName");
			int deptId=Integer.parseInt(request.getParameter("deptId"));
			String job=request.getParameter("job");
			String school=request.getParameter("school");
			String jobContent=request.getParameter("jobContent");
			int  trainscore=Integer.valueOf(request.getParameter(" trainscore"));
			String  startDate=request.getParameter(" startDate");
			String endDate=request.getParameter("endDate");
			
			ResumeManager resumeManager=new ResumeManager();
			Resume resume=new Resume();
			resume.setResumeid(resumeId);
			resume.setEmpId(empId);
			resume.setEmpName(empName);
			resume.setDeptId(deptId);
			resume.setJob(job);
			resume.setSchool(school);
			resume.setJobContent(jobContent);
			resume.setTrainscore(trainscore);
			resume.setStartDate(startDate);
			resume.setEndDate(endDate);
			
			resumeManager.updateResume(resume);
			
			request.setAttribute("resume", resume);
			request.getRequestDispatcher("/updateResume.jsp").forward(request, response);
		}
		
	}

}

