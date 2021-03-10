package com.example.category;

import java.io.IOException;
import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeleteCategoryId")
public class DeleteCategoryId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		CategoryPojo categorypojo= new CategoryPojo();
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		HttpSession session=request.getSession();
		int categoryid=Integer.parseInt(request.getParameter("CategoryId"));
		CategoryDao categorydao = new CategoryDaoImpl();
		
		int i = categorydao.Delete(categoryid);
		
		if(i>0) {
			RequestDispatcher rd = request.getRequestDispatcher("WelcmAdmin.jsp");
			rd.forward(request, response);
			
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("WelcmAdmin.jsp");
			rd.forward(request, response);
			
		}
	
	
	
	}

}
