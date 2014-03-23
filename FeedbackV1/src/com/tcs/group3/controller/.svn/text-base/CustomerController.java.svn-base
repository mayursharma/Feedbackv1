package com.tcs.group3.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tcs.group3.bean.UserFeedback;
import com.tcs.group3.service.CustomerService;
/**
 * Servlet implementation class CustomerController
 */
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		String username=(String) session.getAttribute("uName");
		String from=request.getParameter("date1");
		String to=request.getParameter("date2");
		String TypeRoom = request.getParameter("TypeRoom");
		String laundry = request.getParameter("laundry");
		String food = request.getParameter("food");
		String hygiene = request.getParameter("hygiene");
		String infrastructure = request.getParameter("infrastructure");
		String rooms = request.getParameter("rooms");
		String description = request.getParameter("description");
		String suggest = request.getParameter("suggest");
		
		
		UserFeedback uf=new UserFeedback();
		
		uf.setCustId(username);
		uf.setDateFrom(from);
		uf.setDateTo(to);
		uf.setTypeRoom(TypeRoom);
		uf.setLaundry(laundry);
		uf.setFood(food);
		uf.setHygiene(hygiene);
		uf.setInfrastructure(infrastructure);
		uf.setRoomService(rooms);
		uf.setDescription(description);
		uf.setSuggestion(suggest);
		
		System.out.println(uf.getDateFrom());
		System.out.println(uf.getDateTo());
		sendFeedback(uf,request,response);
		
		
	}


	private void sendFeedback(UserFeedback uf,HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		CustomerService cs=new CustomerService();
		if (cs.sendFeedbackService(uf))
		{
			forwardToLocation("success.jsp",request,response);
			
		}
		else
			forwardToLocation("error.jsp",request,response);
	}	
	
	private void forwardToLocation(String url, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher(url);
		
		if( null != rd )
		{
			rd.forward(request, response);
		}
		else{	
			
			response.sendError(403, "No page found matching the URL:"+ url );
		}
	}
}


