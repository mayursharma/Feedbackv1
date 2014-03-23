package com.tcs.group3.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.tcs.group3.bean.UserFeedback;

import com.tcs.group3.dao.viewDao;

public class SearchService 
{
	public ArrayList<UserFeedback> viewPendingFeedbackServ(){
		
		viewDao ad = new viewDao();	
		

			try 
			{
				return ad.viewPendingFeedback();	
			} catch (SQLException e) 
			{
				
				e.printStackTrace();
				return null;
			}
		}

		public UserFeedback view1Feedback(String feedbackId) 
		{
			UserFeedback fbkInfo;
			viewDao ad = new viewDao();
			fbkInfo=ad.view1FeedbackDAO(feedbackId);
			return fbkInfo;
		}

}
