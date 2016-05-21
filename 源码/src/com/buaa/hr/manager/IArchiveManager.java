package com.buaa.hr.manager;

import com.buaa.hr.entity.Employee;

import java.util.List;

import com.buaa.hr.entity.Archive;

public interface IArchiveManager {
	public List printAllArchive();
	public Archive printArchiveById(int empid);
	public void addArchive(Archive arc);
	public void deleteArchiveById(int arcId);
	public void alterArchiveById(Archive arc);
	

}
