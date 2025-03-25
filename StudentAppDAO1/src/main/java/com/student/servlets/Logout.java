package com.student.servlets;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logout")
public class Logout extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession(false);
	
		

		if(session!=null)
		{
			session.invalidate();
			resp.sendRedirect("Login.jsp");
			
//			req.setAttribute("logout","logout Sucessfull.....");
//			RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
//			rd.forward(req, resp);
		}
		
		else
		{
			req.setAttribute("logouterror","Session expired please login.....");
			RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
			rd.forward(req, resp);
		}
	}

}
