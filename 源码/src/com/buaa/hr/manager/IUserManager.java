package com.buaa.hr.manager;

import java.sql.SQLException;
import java.util.List;

import com.buaa.hr.entity.User;

public interface IUserManager {
	public boolean isValid(User user) ;
	public List queryAllUsers() ;
	public void addUser(User user) ;
	public void updateUserByUserId(int userId);
	public void deleteUserByUserId(int userId);
	public User queryUserByUserId(int userId) ;
}
