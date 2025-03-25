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

@WebServlet("/forgotpassword")
public class ForgotPassword extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//StudentDAO ref object
		StudentDAO  sdao = new StudentDAOImpl();
		//PrintWriter ref object
		//PrintWriter out = resp.getWriter();
		
		Student s = sdao.getStudent(Long.parseLong(req.getParameter("phone")), req.getParameter("mail"));
		if(s!=null)
		{
			
			if(req.getParameter("password").equals(req.getParameter("confirmPass")))
			{
				s.setPassword(req.getParameter("password"));
				if(sdao.updateStudent(s))
				{
					//out.println("<h1>Password Updated Sucessfully</h1>");
					req.setAttribute("success1", "Password Updated Successfully");
					RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
					rd.forward(req, resp);
				}
				else
				{
					//out.println("<h1>Failed to Update Password</h1>");
					req.setAttribute("failure", "Failed to Update Password ");
					RequestDispatcher rd = req.getRequestDispatcher("forgotPassword.jsp");
					rd.forward(req, resp);
				}
			}
			else
			{
				//out.println("<h1>Password Mismatched</h1>");
				req.setAttribute("mismatched", "Password Mismatched ");
				RequestDispatcher rd = req.getRequestDispatcher("forgotPassword.jsp");
				rd.forward(req, resp);
			}
		}
		else
		{
			//out.println("<h1>Student Not Found</h1>");
			req.setAttribute("notFound", "Student Not Found");
			RequestDispatcher rd = req.getRequestDispatcher("forgotPassword.jsp");
			rd.forward(req, resp);
		}
		
	}

}
