package com.example;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetProductById")
public class GetProductById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id=Integer.parseInt(request.getParameter("id"));
		ProDao pd = new ProImpl();
		request.setAttribute("id",pd.GetProductbyId(id));
		RequestDispatcher rd = request.getRequestDispatcher("UpdateProduct.jsp");
		rd.forward(request, response);
		
		
	}

}
