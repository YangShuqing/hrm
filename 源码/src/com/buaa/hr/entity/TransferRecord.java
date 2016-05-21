package com.buaa.hr.entity;

import java.util.Date;

public class TransferRecord {
	private int recordId;
	private int empId;
	private String empName;
	private String empSex;
	private Date trfDate;
	private String formerDep;
	private String dep;
	public int getRecordId() {
		return recordId;
	}
	public void setRecordId(int recordId) {
		this.recordId = recordId;
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
	public String getEmpSex() {
		return empSex;
	}
	public void setEmpSex(String empSex) {
		this.empSex = empSex;
	}
	public Date getTrfDate() {
		return trfDate;
	}
	public void setTrfDate(Date trfDate) {
		this.trfDate = trfDate;
	}
	public String getFormerDep() {
		return formerDep;
	}
	public void setFormerDep(String formerDep) {
		this.formerDep = formerDep;
	}
	public String getDep() {
		return dep;
	}
	public void setDep(String dep) {
		this.dep = dep;
	}
	
}
