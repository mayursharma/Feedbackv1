package com.tcs.group3.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tcs.group3.bean.UserLogin;
import com.tcs.group3.service.LoginService;


public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		validateLogin(request, response);
		
		}
	
	
	private void validateLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String userName = request.getParameter("txtUserName");
		String password = request.getParameter("txtPassword");
		String role="customer";
		if (request.getParameter("role")!=null)
		{
			role="admin";
		}
		
		UserLogin ul=new UserLogin();
		ul.setUserName(userName);
		ul.setPassword(password);
		ul.setUserRole(role);
		
		HttpSession session = request.getSession();
		
		if(userName != null && userName != "" && password != null && password != "") 
		{
			if (isValidateLogin(ul)) 
			{
				session.setAttribute("uName", userName);
				session.setAttribute("role", role);
				if(role.equals("customer"))
				{
				forwardToLocation("Feedback.jsp",request,response);
				} 
				else if(role.equals("admin"))
				{
				forwardToLocation("admin.jsp",request,response);
				}
			}
			else 
			{
				session.invalidate();
				request.setAttribute("msg","Invalid username Or password");
				forwardToLocation("login.jsp", request, response);
			}
		} 
		else 
		{
			request.setAttribute("msg","Please enter username and password");
			forwardToLocation("login.jsp", request, response);
		}
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
		};
		
	}


	private boolean isValidateLogin(UserLogin ul) {
		
		LoginService ls=new LoginService();
		return (ls.isValidateLoginService(ul));
		
		
		
	}


}
