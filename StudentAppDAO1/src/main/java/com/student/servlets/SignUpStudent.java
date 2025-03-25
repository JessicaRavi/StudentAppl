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

@WebServlet("/signup")
public class SignUpStudent extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//creation of POJO Class-student
		Student s = new Student();
		//creation of studentDAO-interface
		StudentDAO sdao = new StudentDAOImpl();
		//creation PrintWriter
		//PrintWriter out = resp.getWriter();
		
		//collecting the data from the UI (getParameter())
		
		//String name =req.getParameter("name");
		//s.setName(name);
		s.setName(req.getParameter("name"));
		
		//String phone = req.getParameter("phone");
		//long phone1 = Long.parseLong(phone);
		//s.setPhone(phone1);
	    s.setPhone(Long.parseLong(req.getParameter("phone")));
	    s.setMail(req.getParameter("email"));
	    s.setBranch(req.getParameter("branch"));
	    s.setLocation(req.getParameter("loc"));
	    if(req.getParameter("password").equals(req.getParameter("confirmpass")))
	    	s.setPassword(req.getParameter("password"));
	    
	    //JDBC logic
	    if(sdao.insertStudent(s))
	    {
	    	//out.println("<h1>Data Saved Successfully!!!!");
	    	req.setAttribute("success", "Data Saved Successfullyyyy");
	    	RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
	    	rd.forward(req, resp);
	    }
	    else
	    {
	    	//.out.println("<h1>Failed to save data</h1>");
	    	req.setAttribute("error", "Failed to save data");
	    	RequestDispatcher rd = req.getRequestDispatcher("SignUp.jsp");
	    	rd.forward(req, resp);
	    }
	}
}
