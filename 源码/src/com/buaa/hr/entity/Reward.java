package com.buaa.hr.entity;

public class Reward {
	private int rewId;
	private int empId;
	private String empName;
	private String rewtype;
	private String rewDate;
	private String rewTitle;
	private String rewContent;
	public int getRewid() {
		return rewId;
	}
	public void setRewid(int rewid) {
		rewId = rewid;
	}
	public int getEmpid() {
		return empId;
	}
	public void setEmpid(int empid) {
		empId = empid;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getRewtype() {
		return rewtype;
	}
	public void setRewtype(String rewtype) {
		this.rewtype = rewtype;
	}
	public String getRewdate() {
		return rewDate;
	}
	public void setRewdate(String rewdate) {
		rewDate = rewdate;
	}
	public String getRewtitle() {
		return rewTitle;
	}
	public void setRewtitle(String rewtitle) {
		rewTitle = rewtitle;
	}
	public String getRewcontent() {
		return rewContent;
	}
	public void setRewcontent(String rewcontent) {
		rewContent = rewcontent;
	}

}
