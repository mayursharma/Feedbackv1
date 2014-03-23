package com.tcs.group3.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.net.ssl.SSLEngineResult.Status;


import com.tcs.group3.bean.UserFeedback;
import com.tcs.group3.connection.ConnectionDB;
public class SearchDisplayDAO 
{

	public ArrayList<UserFeedback> viewPendingFeedback() throws SQLException
	{

		Connection conn=ConnectionDB.getDBconnection();
		PreparedStatement pstmt = null;	
						
		try{
			pstmt = conn.prepareStatement(AdminSQL.SELECT_SQL);	
			pstmt.setString(1,"pending");
			ResultSet rs=pstmt.executeQuery();
			ArrayList<UserFeedback> ar = new ArrayList<UserFeedback>();
			UserFeedback fedbkIf;
			
			while(rs.next()){
				
				fedbkIf = new UserFeedback();
				fedbkIf.setFeedbackId(rs.getString(1));
				fedbkIf.setCustId(rs.getString(2));
				fedbkIf.setDateFrom(rs.getString(3));
				fedbkIf.setDateTo(rs.getString(4));
				fedbkIf.setTypeRoom(rs.getString(5));
				fedbkIf.setLaundry(rs.getString(6));
				fedbkIf.setFood(rs.getString(7));
				fedbkIf.setHygiene(rs.getString(8));
				fedbkIf.setInfrastructure(rs.getString(9));
				fedbkIf.setRoomService(rs.getString(10));
				fedbkIf.setDescription(rs.getString(11));
				fedbkIf.setSuggestion(rs.getString(12));
				fedbkIf.setStatus(rs.getString(13));
				ar.add(fedbkIf);
			}
			return ar;
			
		}catch (SQLException sqle) {
			sqle.printStackTrace();
			return null;
		}finally{
			if(!conn.equals(null))
				ConnectionDB.closeConnection(conn);
		}
		
	}

	
	public ArrayList<UserFeedback> viewApprovedFeedback() throws SQLException{

		Connection conn=ConnectionDB.getDBconnection();
		PreparedStatement pstmt = null;	
						
		try{
			pstmt = conn.prepareStatement(AdminSQL.SELECT_SQL);	
			pstmt.setString(1,"approved");
			ResultSet rs=pstmt.executeQuery();
			
			ArrayList<UserFeedback> ar = new ArrayList<UserFeedback>();
			UserFeedback fedbkIf;
			
			while(rs.next()){
			
				fedbkIf = new UserFeedback();
				fedbkIf.setFeedbackId(rs.getString(1));
				fedbkIf.setCustId(rs.getString(2));
				fedbkIf.setDateFrom(rs.getString(3));
				fedbkIf.setDateTo(rs.getString(4));
				fedbkIf.setTypeRoom(rs.getString(5));
				fedbkIf.setLaundry(rs.getString(6));
				fedbkIf.setFood(rs.getString(7));
				fedbkIf.setHygiene(rs.getString(8));
				fedbkIf.setInfrastructure(rs.getString(9));
				fedbkIf.setRoomService(rs.getString(10));
				fedbkIf.setDescription(rs.getString(11));
				fedbkIf.setSuggestion(rs.getString(12));
				fedbkIf.setStatus(rs.getString(13));
				ar.add(fedbkIf);
			}
			return ar;
			
		}catch (SQLException sqle) {
			sqle.printStackTrace();
			return null;
		}finally{
			if(!conn.equals(null))
				ConnectionDB.closeConnection(conn);
		}
				
	}
	
	public ArrayList<UserFeedback> viewAllFeedback() throws SQLException
	{

		Connection conn=ConnectionDB.getDBconnection();
		PreparedStatement pstmt = null;	
						
		try{
			pstmt = conn.prepareStatement(AdminSQL.SELECT_SQL_ALL);	
			
			ResultSet rs=pstmt.executeQuery();
			ArrayList<UserFeedback> ar = new ArrayList<UserFeedback>();
			UserFeedback fedbkIf;
			
			while(rs.next()){
				
				fedbkIf = new UserFeedback();
				fedbkIf.setFeedbackId(rs.getString(1));
				fedbkIf.setCustId(rs.getString(2));
				fedbkIf.setDateFrom(rs.getString(3));
				fedbkIf.setDateTo(rs.getString(4));
				fedbkIf.setTypeRoom(rs.getString(5));
				fedbkIf.setLaundry(rs.getString(6));
				fedbkIf.setFood(rs.getString(7));
				fedbkIf.setHygiene(rs.getString(8));
				fedbkIf.setInfrastructure(rs.getString(9));
				fedbkIf.setRoomService(rs.getString(10));
				fedbkIf.setDescription(rs.getString(11));
				fedbkIf.setSuggestion(rs.getString(12));
				fedbkIf.setStatus(rs.getString(13));
				ar.add(fedbkIf);
			}
			return ar;
			
		}catch (SQLException sqle) {
			sqle.printStackTrace();
			return null;
		}finally{
			if(!conn.equals(null))
				ConnectionDB.closeConnection(conn);
		}
		
	}
	
	
	
	
	
	
	public UserFeedback view1FeedbackDAO(String feedbackId) 
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;
		UserFeedback fedbkIf = new UserFeedback();
		try 
		{
			conn=ConnectionDB.getDBconnection();
			pstmt = conn.prepareStatement(AdminSQL.SELECT1_SQL);
			pstmt.setString(1,feedbackId);
			rs=pstmt.executeQuery();
			rs.next();
			fedbkIf.setFeedbackId(rs.getString(1));
			fedbkIf.setCustId(rs.getString(2));
			fedbkIf.setDateFrom(rs.getString(3));
			fedbkIf.setDateTo(rs.getString(4));
			fedbkIf.setTypeRoom(rs.getString(5));
			fedbkIf.setLaundry(rs.getString(6));
			fedbkIf.setFood(rs.getString(7));
			fedbkIf.setHygiene(rs.getString(8));
			fedbkIf.setInfrastructure(rs.getString(9));
			fedbkIf.setRoomService(rs.getString(10));
			fedbkIf.setDescription(rs.getString(11));
			fedbkIf.setSuggestion(rs.getString(12));
			fedbkIf.setStatus(rs.getString(13));
			return fedbkIf;
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
			return null;
		}
		
		finally
		{
			if(!conn.equals(null))
				ConnectionDB.closeConnection(conn);
			
		}
	}

	public boolean approveFeedbackDAO(String feedbackId) 
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		try 
		{
			conn=ConnectionDB.getDBconnection();
			pstmt = conn.prepareStatement(AdminSQL.APPROVE_SQL);
			pstmt.setString(1,feedbackId);
			int app=pstmt.executeUpdate();
			if(app>0)
				return true;
			else
				return false;
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
			return false;
		}
		finally
		{
			if(!conn.equals(null))
				ConnectionDB.closeConnection(conn);
			
		}
	}

	public boolean rejectFeedbackDAO(String feedbackId) 
	{
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		try 
		{
			conn=ConnectionDB.getDBconnection();
			pstmt = conn.prepareStatement(AdminSQL.REJECT_SQL);
			pstmt.setString(1,feedbackId);
			int app=pstmt.executeUpdate();
			if(app>0)
				return true;
			else
				return false;
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
			return false;
		}
		finally
		{
			if(!conn.equals(null))
				ConnectionDB.closeConnection(conn);
			
		}
	}
}
