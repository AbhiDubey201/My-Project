package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/DeleteProduct")
public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	ProductPojo pro= new ProductPojo();
	PrintWriter out =response.getWriter();
	response.setContentType("text/html");
	HttpSession session=request.getSession();
	int id= Integer.parseInt(request.getParameter("id")); 
	System.out.println(id);
    ProDao pd = new ProImpl();
    
    int s=pd.Delete(id);
    
    if(s>0) {
    	
    	
    	RequestDispatcher rd = request.getRequestDispatcher("ShowAllProducts");
    	rd.forward(request,response);
    }
    else {
    	
 

	RequestDispatcher rd = request.getRequestDispatcher("/ShowAllProducts");
	rd.forward(request,response);
    
    }
		
	}
          
	

}
