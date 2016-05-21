package com.buaa.hr.entity;

public class Contract {
	private int cosId;
	private int EmpId;
	private String cosNum;
	private String startDate;
	private String endDate;
	private String job;
	public int getCosId() {
		return cosId;
	}
	public void setCosId(int cosId) {
		this.cosId = cosId;
	}
	public int getEmpId() {
		return EmpId;
	}
	public void setEmpId(int empId) {
		EmpId = empId;
	}
	public String getCosNum() {
		return cosNum;
	}
	public void setCosNum(String cosNum) {
		this.cosNum = cosNum;
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
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	private String content;
}
