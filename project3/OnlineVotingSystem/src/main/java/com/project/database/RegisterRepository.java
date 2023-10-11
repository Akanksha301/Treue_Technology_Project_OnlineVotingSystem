package com.project.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.project.entity.RegisterBean;

public class RegisterRepository {

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
	
	public String regDataInsert(RegisterBean user ) {
		String result = "Data added successfully" ;
		String Query = "insert into register values(?,?,?,?,?,?,?,?,?)" ;
		
		loadDriver(dbdriver);
		Connection con = getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(Query);
			ps.setString(1, user.getName());
			ps.setString(2, user.getFname());
			ps.setString(3, user.getSname());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getContact());
			ps.setString(6, user.getGender());
			ps.setString(7, user.getDob());
			ps.setString(8, user.getVno());
			ps.setString(9, user.getPassword());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "data not entered";
		}
		
		return result ;
		
	}

}
