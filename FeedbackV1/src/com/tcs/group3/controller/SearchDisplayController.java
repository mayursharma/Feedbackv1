package com.tcs.group3.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tcs.group3.bean.UserFeedback;
import com.tcs.group3.service.SearchDisplayService;


public class SearchDisplayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		SearchDisplayService ad=new SearchDisplayService();
		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");
		System.out.println(role);
	
		System.out.println("In approved");
		ArrayList<UserFeedback> obj=new ArrayList<UserFeedback> ();
			
		obj=ad.viewApprovedFeedbackServ();
		request.setAttribute("feedbacklist", obj);
		
			
		RequestDispatcher rd = request.getRequestDispatcher("./viewapprovedforcustomer.jsp");   
		rd.forward(request, response);
	}
}
