package com.student.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {
	
	public static Connection requestConnection()
	{
		Connection con = null;
		String url = "jdbc:mysql://127.0.0.1:3306/company";
		String user = "root";
		String password = "tiger";
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
		} 
		
		catch (ClassNotFoundException | SQLException e) {
		
			e.printStackTrace();
		}
		return con;
	}

}
