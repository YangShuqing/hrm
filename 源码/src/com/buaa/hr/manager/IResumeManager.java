package com.buaa.hr.manager;

import java.util.List;

import com.buaa.hr.entity.Resume;

public interface IResumeManager {
	
	public List printAllResume();
	
	public Resume printResumeById(int empId);
	
	public void addResume(Resume resume);
	
	public void deleteResume(int empId);
	
	public void updateResume(Resume resume);


}
