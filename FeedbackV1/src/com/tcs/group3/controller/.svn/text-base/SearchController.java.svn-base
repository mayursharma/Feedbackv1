package com.tcs.group3.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tcs.group3.bean.UserFeedback;

import com.tcs.group3.service.SearchService;

public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchController() {
        super();
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SearchService ad=new SearchService();
		UserFeedback fedbkInfo;
		
		if(request.getParameter("action").equals("viewall"))
		{
			ArrayList<UserFeedback> obj=new ArrayList<UserFeedback> ();
			obj=ad.viewPendingFeedbackServ();
			request.setAttribute("feedbacklist", obj);
			response.sendRedirect("./login.jsp");
		}
		else if(request.getParameter("action").equals("view1"))
		{
			fedbkInfo=ad.view1Feedback(request.getParameter("feedbackId"));
			request.setAttribute("./viewsingle.jsp", fedbkInfo);
		}
		
		response.sendRedirect("./login.jsp");
	}

}
