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
		<td>Description</td>
		<td>Suggestion</td>
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
		
			
			<td><textarea rows="2" cols="10" ><%out.print(uf.getDescription()); %></textarea></td>
			
			<td><textarea rows="2" cols="10" ><%out.print(uf.getSuggestion()); %></textarea></td>
			
			
			<td><input type=hidden name="event"></td>
			
			<td></td>
		</tr>	
	<% 
		}
	%>


</table>
</form>





</body>
</html>