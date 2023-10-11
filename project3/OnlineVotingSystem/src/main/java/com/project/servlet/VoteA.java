package com.project.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.project.database.VoteARepository;
import com.project.entity.VoteAEntity;

/**
 * Servlet implementation class VoteA
 */
public class VoteA extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VoteA() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		String vno = null ;
		String voteParty = request.getParameter("voteParty");
		
		if(email != null) {
			
			String dburl ="jdbc:mysql://localhost:3306/OnlineVotingSystem" ;
		    String dbusername = "root";
			String dbpassword ="Create@1234" ;
			String dbdriver = "com.mysql.jdbc.Driver" ;
			
			String query = " select vno from register where email =?" ;
			
			try {
				Class.forName(dbdriver);
				Connection con = DriverManager.getConnection(dburl,dbusername,dbpassword);
				PreparedStatement ps = con.prepareStatement(query);
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					vno = rs.getString("vno");
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			VoteAEntity vote = new VoteAEntity(vno,voteParty,email);
			VoteARepository dao = new VoteARepository();
			String result = dao.voteDataInsert(vote);
			if(result.equals("Data added successfully")) {
				session.setAttribute("message", "Thank you for your valuble vote");
				RequestDispatcher rd=request.getRequestDispatcher("Blank.jsp");  
		          rd.forward(request, response);
			}
			else {
				session.setAttribute("message", "You Have Already Voted");
				RequestDispatcher rd=request.getRequestDispatcher("Blank.jsp");  
		          rd.forward(request, response);
			}
		}
		else {
		  RequestDispatcher rd=request.getRequestDispatcher("AskLogin.jsp");  
          rd.forward(request, response);
		}
	}

}
