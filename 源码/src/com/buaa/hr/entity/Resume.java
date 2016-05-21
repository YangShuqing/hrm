package com.buaa.hr.entity;

public class Resume {
	private int resumeid;
	private String   empName;
	private String   school;
	private String   jobContent;
	private String   job;
	private String 	 startDate;
	private String 	 endDate;
	private int   	deptId;
	private int     empId;
	private int   trainscore;
	
	public int getResumeid() {
		return resumeid;
	}
	public void setResumeid(int resumeid) {
		this.resumeid = resumeid;
	}
	public int getEmpId() {
		
		return empId;
	}
	public void setEmpId(int empId) {
		
		this.empId = empId;
	}
	public String getEmpName() {
		
		return empName;
	}
	public void setEmpName(String empName) {
		
		this.empName = empName;
	}
	public int getDeptId() {
		
		return deptId;
	}
	public void setDeptId(int deptId) {
		
		this.deptId = deptId;
	}
	public String getJob() {
		
		return job;
	}
	public void setJob(String job) {
		
		this.job = job;
	}
	public String getSchool() {
		
		return school;
	}
	public void setSchool(String school) {
		
		this.school = school;
	}
	public String getJobContent() {
		
		return jobContent;
	}
	public void setJobContent(String jobContent) {
		
		this.jobContent = jobContent;
	}
	public int getTrainscore() {
		
		return trainscore;
	}
	public void setTrainscore(int trainscore) {
		
		this.trainscore = trainscore;
	}
	public String getStartDate() {
		
		return startDate;
	}
	public void setStartDate(String startDate) {
		
		this.startDate = startDate;
	}
	public String getEndDate() {
		
		return endDate;
	}
	public void setEndDate(String endDate) {
		
		this.endDate = endDate;
	}


}
