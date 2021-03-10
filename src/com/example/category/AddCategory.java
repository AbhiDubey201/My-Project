package com.example.category;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddCategory")
public class AddCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
	
		String categoryname=request.getParameter("CategoryName");
		
		CategoryPojo categorypojo =new CategoryPojo();
		
		categorypojo.setCategoryId(0);
		categorypojo.setCategoryName(categoryname);
		
		CategoryDao categorydao = new CategoryDaoImpl();
		
		boolean b=categorydao.Add(categorypojo);
		
		if(b==true) {
			
			RequestDispatcher rd = request.getRequestDispatcher("WelcmAdmin.jsp");
			rd.forward(request, response);
		}
		else {
			
			out.println("Not Added");
		}

	}

}
