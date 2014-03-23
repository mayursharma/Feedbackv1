package com.tcs.group3.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.tcs.group3.bean.UserFeedback;
import com.tcs.group3.connection.*;

public class CustomerDAO {
	Connection con=null;
	Statement stm=null;
	ResultSet rs=null;
	public boolean sendFeedbackDAO(UserFeedback uf)
	{
		
		
		Connection con= null;
		try {
			con=ConnectionDB.getDBconnection();
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			stm=con.createStatement();
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
		
			rs=stm.executeQuery("insert into CUSTOMERFEEDBACK_GROUPF values ( feedbackidsequence.nextval , '"+uf.getCustId()+"' , to_date('"+uf.getDateFrom()+"','dd-mon-rr') , to_date('"+uf.getDateTo()+"','dd-mon-rr') , '"+uf.getTypeRoom()+"' ,  '"+uf.getLaundry()+"' ,  '"+uf.getFood()+"'  ,  '"+uf.getHygiene()+"'  ,  '"+uf.getInfrastructure()+"','"+uf.getRoomService()+"','"+uf.getDescription()+"' , '"+uf.getSuggestion()+"','pending')" );
			return true;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
