package com.tcs.group3.service;

import java.sql.SQLException;

import com.tcs.group3.bean.UserLogin;
import com.tcs.group3.dao.LoginDAO;

public class LoginService implements LoginServiceInterface{


	public boolean isValidateLoginService(UserLogin ul) {
		
		LoginDAO ld=new LoginDAO();
		try {
			return(ld.isValidateLoginDAO(ul));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return false;
	}

}
