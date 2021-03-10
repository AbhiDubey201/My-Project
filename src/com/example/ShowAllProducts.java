package com.example;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ShowAllProducts")
public class ShowAllProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProDao pdao=new ProImpl();
		HttpSession session =request.getSession();
	
		session.setAttribute("products",pdao.getAll());
		
		RequestDispatcher rd=request.getRequestDispatcher("showallproducts.jsp");
		rd.forward(request,response);
		
	}

}
