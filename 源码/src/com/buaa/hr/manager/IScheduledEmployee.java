package com.buaa.hr.manager;
import java.sql.SQLException;
import java.util.List;

public interface IScheduledEmployee {
	public List queryAllScheduledEmployees() throws SQLException;
}
