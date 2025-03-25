package com.student.servlets;

import java.io.IOException;

import com.student.dao.StudentDAO;
import com.student.dao.StudentDAOImpl;
import com.student.dto.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteUser")
public class DeleteUser extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	   StudentDAO sdao = new StudentDAOImpl();
      Student s = new Student();
      
      s.setId(Integer.parseInt(req.getParameter("id")));
      if(sdao.deleteStudent(s))
      {
    	  req.setAttribute("success", "Data deleted Successfully");
    	  RequestDispatcher rd = req.getRequestDispatcher("ViewUser.jsp");
    	  rd.forward(req, resp);
      }
      else
      {
    	  req.setAttribute("error","Failed to Delete");
    	  RequestDispatcher rd = req.getRequestDispatcher("ViewUser.jsp");
    	  rd.forward(req, resp); 
      }
      
		
	}

}
