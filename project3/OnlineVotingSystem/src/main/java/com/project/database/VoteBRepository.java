package com.project.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.project.entity.VoteAEntity;
import com.project.entity.VoteBEntity;

public class VoteBRepository {

	
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
	
	public String 	voteDataInsert(VoteBEntity vote ) {
		String result = "Data added successfully" ;
		String Query = "insert into electionb values(?,?,?)" ;
		
		loadDriver(dbdriver);
		Connection con = getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(Query);
			
			ps.setString(1, vote.getEmail());
			ps.setString(2, vote.getVno());
			ps.setString(3, vote.getElected());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "data not entered";
		}
		
		return result ;
		
	}
}
