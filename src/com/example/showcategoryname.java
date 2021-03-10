package com.example;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.example.category.CategoryDao;
import com.example.category.CategoryDaoImpl;

@WebServlet("/showcategoryname")
public class showcategoryname extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try {
	 
	 CategoryDao categorydao= new CategoryDaoImpl();
	 HttpSession session= request.getSession(false);
	 if(session!=null)
		 session.setAttribute("categoryname", categorydao.getAll());
	     request.getRequestDispatcher("Product.jsp").forward(request,response);
	     
}
catch(Exception e) {
	
	System.out.println("not going this page");
	e.printStackTrace();
	
}
	}



}
