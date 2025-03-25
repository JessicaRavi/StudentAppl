package com.student.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.student.connection.Connector;
import com.student.dto.Student;

public class StudentDAOImpl implements StudentDAO {
//	Here we will be writing all the jdbc logics.
	
	private Connection con;
	public StudentDAOImpl()  //constructor
	{
		this.con = Connector.requestConnection();
	}

	@Override
	public boolean insertStudent(Student s) {
		String query = "INSERT INTO STUDENT VALUES(0,?,?,?,?,?,?,SYSDATE())";
		int i = 0;
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,s.getName());
			ps.setLong(2,s.getPhone());
			ps.setString(3,s.getMail());
			ps.setString(4,s.getBranch());
			ps.setString(5, s.getLocation());
			ps.setString(6,s.getPassword());
			
			i = ps.executeUpdate();
			
		} 
		
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		if(i>0)
		{
			return true;
		}
		else
		{
			return false;
		}
	
	
	}

	@Override
	public boolean updateStudent(Student s) {
		String query = "UPDATE STUDENT SET NAME =?,PHONE=?,MAIL =?,BRANCH =?,LOCATION=?,PASSWORD=? WHERE ID =?";
		int i = 0;
		try {
			PreparedStatement ps =  con.prepareStatement(query);
			ps.setString(1,s.getName());
			ps.setLong(2,s.getPhone());
			ps.setString(3,s.getMail());
			ps.setString(4,s.getBranch());
			ps.setString(5, s.getLocation());
			ps.setString(6,s.getPassword());
			ps.setInt(7, s.getId());
			
			i = ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		if(i>0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	@Override
	public boolean deleteStudent(Student s) {
		String query = "DELETE FROM STUDENT WHERE ID =?";
		PreparedStatement ps;
		int i = 0;
		try {
			ps = con.prepareStatement(query);
			
			ps.setInt(1, s.getId());
			i = ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		if(i>0)
		{
			return true;
		}
		else
		{
			return false;
		}
		
	}

	@Override
	public Student getStudent(String mail, String password) {
		
		Student s = null;
		String query = "SELECT * FROM STUDENT WHERE MAIL =? AND PASSWORD = ?";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,mail);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
				{
				   s = new Student();
				   s.setId(rs.getInt("ID"));
				   s.setName(rs.getString("NAME"));
				   s.setPhone(rs.getLong("PHONE"));
				   s.setMail(rs.getString("MAIL"));
				   s.setBranch(rs.getString("BRANCH"));
				   s.setLocation(rs.getString("LOCATION"));
				   s.setPassword(rs.getString("PASSWORD"));
				   s.setDate(rs.getString("DATE"));
				}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return s;
	}

	@Override
	public Student getStudent(long phone, String mail) {
		
		String query ="SELECT * FROM STUDENT WHERE PHONE=? AND MAIL=?";
		Student s = null;
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setLong(1,phone);
			ps.setString(2, mail);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				   s= new Student();
				   s.setId(rs.getInt("ID"));
				   s.setName(rs.getString("NAME"));
				   s.setPhone(rs.getLong("PHONE"));
				   s.setMail(rs.getString("MAIL"));
				   s.setBranch(rs.getString("BRANCH"));
				   s.setLocation(rs.getString("LOCATION"));
				   s.setPassword(rs.getString("PASSWORD"));
				   s.setDate(rs.getString("DATE"));
			}
			
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return s;
	}

	@Override
	public ArrayList<Student> getStudent() 
	{
		String query="SELECT * FROM STUDENT WHERE ID!=1";
		Student s=null;
		ArrayList<Student> studentsList=new ArrayList<Student>();
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				s=new Student();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setPhone(rs.getLong("phone"));
				s.setMail(rs.getString("mail"));
				s.setBranch(rs.getString("branch"));
				s.setLocation(rs.getString("location"));
				s.setPassword(rs.getString("password"));
				s.setDate(rs.getString("date"));
				studentsList.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return studentsList;

	}

	@Override
	public Student getStudent(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
