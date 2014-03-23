package com.tcs.group3.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tcs.group3.bean.UserLogin;
import com.tcs.group3.connection.ConnectionDB;

public class LoginDAO implements LoginSQL{

	public boolean isValidateLoginDAO(UserLogin ul) throws SQLException
	{
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;
		
		conn=ConnectionDB.getDBconnection();
		pstmt = conn.prepareStatement(LoginSQL.LOGIN_SQL);
		pstmt.setString(1,ul.getUserName());
		pstmt.setString(2, ul.getPassword());
		pstmt.setString(3,ul.getUserRole());
		rs=pstmt.executeQuery();
		return(rs.next());
	}
	
}
