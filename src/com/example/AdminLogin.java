package com.example;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 UserPojo pojo=new UserPojo();
		 String Email=request.getParameter("email");
		 String pass=request.getParameter("pass");
		
		    if(Email.equals("Abhishek@gmail.com") && pass.equals("12345")) {
			 
			RequestDispatcher rd1=request.getRequestDispatcher("/WelcmAdmin.jsp");
			 rd1.forward(request , response);
		 }
		 
		 else {
			 
			 RequestDispatcher rd1=request.getRequestDispatcher("/Admin.jsp");
			 
		 }
		 
		
	
	}

}
