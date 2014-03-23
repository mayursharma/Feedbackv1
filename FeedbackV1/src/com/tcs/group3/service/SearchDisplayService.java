package com.tcs.group3.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.tcs.group3.bean.UserFeedback;
import com.tcs.group3.dao.SearchDisplayDAO;


public class SearchDisplayService {
	public ArrayList<UserFeedback> viewPendingFeedbackServ(){
		
	SearchDisplayDAO ad = new SearchDisplayDAO();	
	

		try 
		{
			return ad.viewPendingFeedback();	
		} catch (SQLException e) 
		{
			
			e.printStackTrace();
			return null;
		}
	}
	
	public ArrayList<UserFeedback> viewAllFeedbackServ(){
		
		SearchDisplayDAO ad = new SearchDisplayDAO();	
		

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
		SearchDisplayDAO ad = new SearchDisplayDAO();	
		

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
		SearchDisplayDAO ad = new SearchDisplayDAO();
		fbkInfo=ad.view1FeedbackDAO(feedbackId);
		return fbkInfo;
	}

	public boolean approveFeedback(String FeedbackId) 
	{
		boolean approved= false;
		SearchDisplayDAO ad = new SearchDisplayDAO();
		approved=ad.approveFeedbackDAO(FeedbackId);
		return approved;
	}

	public boolean rejectFeedback(String FeedbackId) 
	{
		boolean rejected= false;
		SearchDisplayDAO ad = new SearchDisplayDAO();
		rejected=ad.rejectFeedbackDAO(FeedbackId);
		return rejected;
	}
}
