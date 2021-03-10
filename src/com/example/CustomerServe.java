package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerServe")
public class CustomerServe extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String uname=request.getParameter("username");
		String pass=request.getParameter("password");
		String Email=request.getParameter("email");
		Long cno=Long.parseLong(request.getParameter("number"));
	
		
		
		UserPojo pojo=new UserPojo();
		pojo.setEmail(Email);
		pojo.setPassword(pass);
		pojo.setNumber(cno);
		pojo.setUsername(uname);
		
		DAO dao1= new DaoImpl();
		int b=dao1.update(pojo);
		
		if(b>0)
		{
			String msg="Update Successfully";
			request.setAttribute("true2",msg);
			RequestDispatcher rd= request.getRequestDispatcher("/index.jsp");
			rd.forward(request,response);
		}
		else 
		{
			out.print("Update Not Successfully"); 
			RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
			rd.include(request,response);
			
			
			
		}

		
	
	}

}
