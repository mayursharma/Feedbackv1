package com.tcs.group3.dao;

public interface AdminSQL {

	String SELECT_SQL = "SELECT " 
		+ "*" 
		+ "FROM CustomerFeedback_groupf s WHERE s.Status = ? ";
	
	
	String SELECT_SQL_ALL = "SELECT " 
		+ "*" 
		+ "FROM CustomerFeedback_groupf ";
	
	String SELECT1_SQL = "SELECT " 
		+ "s.FeedbackId, s.CustId, s.dateOfStayFrom, s.dateOfStayTo, s.TypeRoom, "
		+ "s.Laundry, s.Food, s.Hygiene, s.Infrastructure, s.RoomService, s.Description, "
		+ "s.Suggestion, s.Status " 
		+ "FROM CustomerFeedback_groupf s WHERE s.FeedbackId=?";
	String INSERT_SQL =	"INSERT INTO CustomerFeedback_groupf(" 
		+ "feedbackId, CustId, dateOfStayFrom, dateOfStayTo, TypeRoom, "
		+ "Laundry, Food, Hygiene, Infrastructure, RoomService, "
		+ "Description, Suggestion,Status) " 
		+ "VALUES (" 
		+ "Nitish_KeySequence.nextval,?,?,?,?," 
		+ "?,?,?,?,?," 
		+ "?,?,'P')";

	String APPROVE_SQL = "update CustomerFeedback_groupf s "+
		"set s.status='approved' where s.feedbackid=?";

	String REJECT_SQL = "update CustomerFeedback_groupf s "+
		"set s.status='rejected' where s.feedbackid=?";
}
