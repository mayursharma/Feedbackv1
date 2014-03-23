<%@ page language="java" import="java.util.*" import="com.tcs.group3.bean.UserFeedback" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form name="feedback">
<table>

	<tr>
		<td>FeedbackID</td>
		<td>CustomerID</td>
		<td>Start Date</td>
		<td>End Date</td>
		<td>Description</td>
		<td>Suggestion</td>
		<td>Room Type</td>
		<td>Laundry</td>
		<td>Food</td>
		<td>Hygiene</td>
		<td>Infrastructure</td>
		<td>Room Service</td>
		<td>Status</td>
	</tr>
	<%
	
	ArrayList<UserFeedback> data= (ArrayList<UserFeedback>)request.getAttribute("feedbacklist");
		
		System.out.print(data.size());
		Iterator<UserFeedback> itr=data.iterator();
		UserFeedback uf;
		while(itr.hasNext())
		
		{	
			uf=(UserFeedback)itr.next();
		
			System.out.print(uf.getDescription());
	%>
	
		<tr>
		
			
			<td><textarea rows="2" cols="4" ><%out.print(uf.getFeedbackId()); %></textarea></td>
		
			
			<td><textarea rows="2" cols="10" ><%out.print(uf.getCustId()); %></textarea></td>
		
			<td><textarea rows="2" cols="11" ><%out.print(uf.getDateFrom()); %></textarea></td>
			
			<td><textarea rows="2" cols="11" ><%out.print(uf.getDateTo()); %></textarea></td>
			
			<td><textarea rows="2" cols="10" ><%out.print(uf.getDescription()); %></textarea></td>
			
			<td><textarea rows="2" cols="10" ><%out.print(uf.getSuggestion()); %></textarea></td>
			
			
			<td><textarea rows="1" cols="14" ><%out.print(uf.getTypeRoom()); %></textarea></td>
			
			<td><textarea rows="2" cols="10" ><%out.print(uf.getLaundry()); %></textarea></td>
			
			<td><textarea rows="2" cols="10" ><%out.print(uf.getFood()); %></textarea></td>
			
			<td><textarea rows="2" cols="10" ><%out.print(uf.getHygiene()); %></textarea></td>
			
			<td><textarea rows="2" cols="10" ><%out.print(uf.getInfrastructure()); %></textarea></td>
			
			<td><textarea rows="2" cols="10" ><%out.print(uf.getRoomService()); %></textarea></td>
			
			<td><textarea rows="1" cols="10" ><%out.print(uf.getStatus()); %></textarea></td>
			
			<td><input type=hidden name="event"></td>
			<td><input type="button" value="approve" onclick="approvefunc()"></input>
			<input type="button" value="reject" onclick="reject()"></input>
			<td></td>
		</tr>	
	<% 
		}
	%>


</table>
</form>

</body>
</html>