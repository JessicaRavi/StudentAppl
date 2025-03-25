package com.student.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import com.student.dao.StudentDAO;
import com.student.dao.StudentDAOImpl;
import com.student.dto.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginStudent extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//StudentDAO ref object
		StudentDAO  sdao = new StudentDAOImpl();
		//PrintWriter ref object
		//PrintWriter out = resp.getWriter();
		
		HttpSession session = req.getSession();
	     Student s = sdao.getStudent(req.getParameter("mail"),req.getParameter("password"));
		if(s!=null)
		{
			//out.println("<h1 style\"color:green\">Login Sucessfull"+s.getName()+"</h1>");
			//req.setAttribute("student", s);
			session.setAttribute("student", s);
			req.setAttribute("success", "Login Successful");
			RequestDispatcher rd = req.getRequestDispatcher("dashboard.jsp");
			rd.forward(req, resp);
		}
		else
		{
			//out.println("Invalid Credentials");
			req.setAttribute("error", "Failed to Login");
			RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
			rd.forward(req, resp);
		}
	
	
	}
}

