package com.example.category;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ShowAllCategory")
public class ShowAllCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		CategoryDao categorydao= new CategoryDaoImpl();
		HttpSession session = request.getSession();
		
		session.setAttribute("category", categorydao.getAll());
	    System.out.println(categorydao.getAll());
		
		RequestDispatcher rd = request.getRequestDispatcher("/ShowCategory.jsp");
				rd.forward(request,response);
		
	}

}
