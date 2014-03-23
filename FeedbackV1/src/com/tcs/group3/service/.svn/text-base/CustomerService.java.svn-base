package com.tcs.group3.service;

import com.tcs.group3.bean.UserFeedback;
import com.tcs.group3.dao.CustomerDAO;


public class CustomerService implements CustomerServiceInterface {

	public boolean sendFeedbackService(UserFeedback uf) {
		CustomerDAO cd=new CustomerDAO();
		return(cd.sendFeedbackDAO(uf));	
	}
}
