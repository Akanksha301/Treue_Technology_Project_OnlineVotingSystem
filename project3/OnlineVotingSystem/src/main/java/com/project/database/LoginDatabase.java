package com.project.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.project.entity.loginBean;

public class LoginDatabase {

	
	private String dburl ="jdbc:mysql://localhost:3306/OnlineVotingSystem" ;
	private String dbusername = "root";
	private String dbpassword ="Create@1234" ;
	private String dbdriver = "com.mysql.jdbc.Driver" ;
	
	public void loadDriver(String dbdriver) {
		try {
			Class.forName(dbdriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		Connection con = null ;
		
		try {
			con = DriverManager.getConnection(dburl,dbusername,dbpassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	public boolean logincheck(loginBean user) {
		loadDriver(dbdriver);
		Connection con = getConnection();
		
		boolean status = false ;
		String query = "select email, password from register where email = ? and password =? ";
		
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			ResultSet rs = ps.executeQuery();
			status = rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status ;
	}
}
