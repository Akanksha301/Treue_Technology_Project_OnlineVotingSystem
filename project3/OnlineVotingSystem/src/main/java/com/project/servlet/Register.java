package com.project.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.project.database.RegisterRepository;
import com.project.entity.RegisterBean;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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


		String name = request.getParameter("name");
		String fname = request.getParameter("fname");
		String sname = request.getParameter("sname");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String vno = request.getParameter("vno");
		String password = request.getParameter("password");
		
		RegisterBean user = new RegisterBean(name,fname,sname,email,contact,gender,dob,vno,password);
		RegisterRepository dao = new RegisterRepository();
		String result= dao.regDataInsert(user);
		if(result.equals("Data added successfully")) {
			session.setAttribute("message", "Registration succesfull");
			 RequestDispatcher rd=request.getRequestDispatcher("Blank.jsp");  
		     rd.include(request, response);  
		}
		else {
			session.setAttribute("message", "This Email is already Registered ");
			 RequestDispatcher rd=request.getRequestDispatcher("Blank.jsp");  
		     rd.include(request, response); 
		}
		
	}

}
