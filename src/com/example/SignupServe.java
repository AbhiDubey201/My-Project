package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

@WebServlet("/LoginServlet")
public class SignupServe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String msg=null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String username=request.getParameter("username");
		String pass=request.getParameter("password");
				String email=request.getParameter("email");
				Long cno=Long.parseLong(request.getParameter("number"));
				
				UserPojo pojo=new UserPojo();
				pojo.setUsername(username);
				pojo.setPassword(pass);
				pojo.setEmail(email);
				pojo.setNumber(cno);
				
				
				DAO dao=new DaoImpl();
				boolean b=dao.add(pojo);
	  
	  if(b==true)
	  {
		 String msg="data inserted";
		 request.setAttribute("true",msg);
		 RequestDispatcher rd= request.getRequestDispatcher("Login.jsp");
		 rd.forward(request,response);
	  }
	  else
	  {
		  msg="something went wrong";
	  }
	  
	}
} 
