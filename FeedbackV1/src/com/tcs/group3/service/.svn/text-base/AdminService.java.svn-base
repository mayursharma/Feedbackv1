package com.tcs.group3.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.tcs.group3.bean.UserFeedback;
import com.tcs.group3.dao.AdminDAO;


public class AdminService {
	public ArrayList<UserFeedback> viewPendingFeedbackServ(){
		
	AdminDAO ad = new AdminDAO();	
	

		try 
		{
			return ad.viewPendingFeedback();	
		} catch (SQLException e) 
		{
			
			e.printStackTrace();
			return null;
		}
	}
	
	public ArrayList<UserFeedback> viewRejectedFeedbackServ(){
		AdminDAO ad = new AdminDAO();	
		

		try 
		{
			return ad.viewRejectedFeedback();	
		} catch (SQLException e) 
		{
			
			e.printStackTrace();
			return null;
		}
	}

	
	public ArrayList<UserFeedback> viewAllFeedbackServ(){
		
		AdminDAO ad = new AdminDAO();	
		

			try 
			{
				return ad.viewAllFeedback();	
			} catch (SQLException e) 
			{
				
				e.printStackTrace();
				return null;
			}
		}
	
	public ArrayList<UserFeedback> viewApprovedFeedbackServ(){
		AdminDAO ad = new AdminDAO();	
		

		try 
		{
			return ad.viewApprovedFeedback();	
		} catch (SQLException e) 
		{
			
			e.printStackTrace();
			return null;
		}
	}

	

	public UserFeedback view1Feedback(String feedbackId) 
	{
		UserFeedback fbkInfo;
		AdminDAO ad = new AdminDAO();
		fbkInfo=ad.view1FeedbackDAO(feedbackId);
		return fbkInfo;
	}

	public boolean approveFeedback(String FeedbackId) 
	{
		boolean approved= false;
		AdminDAO ad = new AdminDAO();
		approved=ad.approveFeedbackDAO(FeedbackId);
		return approved;
	}

	public boolean rejectFeedback(String FeedbackId) 
	{
		boolean rejected= false;
		AdminDAO ad = new AdminDAO();
		rejected=ad.rejectFeedbackDAO(FeedbackId);
		return rejected;
	}
}
