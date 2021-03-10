package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetProduct")
public class GetProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int productid = Integer.parseInt( request.getParameter("id"));
		ProDao productdao= new ProImpl();
        request.setAttribute("id", productdao.GetProductbyId(productid));
		request.getRequestDispatcher("/NewFile.jsp").forward(request, response);
		
	
		
		
		
		
	}


}
