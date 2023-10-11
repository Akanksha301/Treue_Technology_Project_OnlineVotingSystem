package com.project.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.project.database.LoginDatabase;
import com.project.entity.loginBean;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		HttpSession session = request.getSession(true);
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		loginBean user = new loginBean(email,password);
		LoginDatabase dao = new LoginDatabase();
		boolean Status = dao.logincheck(user);
		if(Status) {
			session.setAttribute("email", email);
			session.setAttribute("password", password);
			session.setAttribute("message", "Login Succesfully !!!");
			RequestDispatcher rd=request.getRequestDispatcher("Blank.jsp");  
	          rd.forward(request, response);
		}
		else {
			session.setAttribute("message", "Invalid Email or Password !!!");
			RequestDispatcher rd=request.getRequestDispatcher("Blank.jsp");  
	          rd.forward(request, response);
		}
	}

}
