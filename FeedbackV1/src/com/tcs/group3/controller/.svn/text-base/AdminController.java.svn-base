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
import com.tcs.group3.service.AdminService;


public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		AdminService ad=new AdminService();
		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");
		System.out.println(role);
		if(!role.equals("admin"))
		{
		session.invalidate();
		response.sendRedirect("./login.jsp");
		}
		System.out.print(request.getParameter("action"));
		if(request.getParameter("action").equals("viewall"))
		{
			
			System.out.println("in viewall");
			ArrayList<UserFeedback> obj=new ArrayList<UserFeedback> ();
			
			obj=ad.viewAllFeedbackServ();
			request.setAttribute("feedbacklist", obj);
			RequestDispatcher rd = request.getRequestDispatcher("./view2.jsp");   
			rd.forward(request, response); 
		}
		
		
		else if(request.getParameter("action").equals("pending"))
		{
			System.out.println("In pending");
			ArrayList<UserFeedback> obj=new ArrayList<UserFeedback> ();
			
			obj=ad.viewPendingFeedbackServ();
			request.setAttribute("feedbacklist", obj);
		
			
			RequestDispatcher rd = request.getRequestDispatcher("./view1.jsp");   
			rd.forward(request, response);
			
		}
		else if(request.getParameter("action").equals("approved"))
		{
			System.out.println("In approved");
			ArrayList<UserFeedback> obj=new ArrayList<UserFeedback> ();
			
			obj=ad.viewApprovedFeedbackServ();
			request.setAttribute("feedbacklist", obj);
		
			
			RequestDispatcher rd = request.getRequestDispatcher("./viewapproved.jsp");   
			rd.forward(request, response);
		}
		else if(request.getParameter("action").equals("rejected"))
		{
			System.out.println("In approved");
			ArrayList<UserFeedback> obj=new ArrayList<UserFeedback> ();
			
			obj=ad.viewRejectedFeedbackServ();
			request.setAttribute("feedbacklist", obj);
		
			
			RequestDispatcher rd = request.getRequestDispatcher("./viewrejected.jsp");   
			rd.forward(request, response);
		}
	}
}
