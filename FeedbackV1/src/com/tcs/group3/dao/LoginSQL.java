package com.tcs.group3.dao;

public interface LoginSQL {
	
	String LOGIN_SQL = "SELECT " 
		+ "* " 
		+ "FROM UserLoginFeedback_groupf s WHERE s.user_name = ? and s.user_password=? and s.user_roll=? ";
}
