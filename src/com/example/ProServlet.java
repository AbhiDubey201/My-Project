package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProServlet")
public class ProServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
	
		String name=request.getParameter("name");
		String description=request.getParameter("description");
		int category= Integer.parseInt(request.getParameter("categoryid"));
		int price=Integer.parseInt(request.getParameter("price"));
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		String img=request.getParameter("img");
		
		System.out.println(name+description+category+price+quantity+img);
		
		ProductPojo pj = new ProductPojo();
		pj.setId(0);
		pj.setName(name);
		pj.setDescription(description);
		pj.setCategoryId(category);
		pj.setPrice(price);
		pj.setQuantity(quantity);
		pj.setImg("images//productimg//"+img);
				
		ProDao pro= new ProImpl();
		 boolean b=pro.Add(pj);
		
       if(b==true) {
    	   
    		 RequestDispatcher rd= request.getRequestDispatcher("WelcmAdmin.jsp");
    		 rd.forward(request, response);
    	   
    	   
       }
       else {
    	   
    	   RequestDispatcher rd= request.getRequestDispatcher("Product.jsp");
    	   rd.forward(request, response);
    	   
       }
	}

	

}
