package com.buaa.hr.manager;

import java.util.List;

import com.buaa.hr.entity.Employee;

public interface IEmpTransfer {
	public List queryEmpById(int empId);//根据员工id查询到该员工
	
	public List queryEmpByStr(String str);//根据输入的字符模糊查询员工
	
	public void addEmpFormerDept(Employee emp,int ndeptid);//在调动信息表中写入员工的调动前所在部门
	
	public void updateEmpDept(Employee emp,int ndeptid);//员工部门调动
	
	public void addEmpDept(Employee emp);//在调动信息表中写入员工调动后的所在部门
}
