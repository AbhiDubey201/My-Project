package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateProduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		int id=Integer.parseInt(request.getParameter("Id"));
		String name=request.getParameter("name");
		String Description=request.getParameter("description");
		int categoryid=Integer.parseInt(request.getParameter("category"));
		int price=Integer.parseInt(request.getParameter("price"));
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		String img=request.getParameter("img");
		
		ProductPojo pj = new ProductPojo();
		pj.setId(id);
		pj.setName(name);
		pj.setDescription(Description);
		pj.setCategoryId(categoryid);
		pj.setPrice(price);
		pj.setQuantity(quantity);
		pj.setImg(img);
		
		ProDao pd = new ProImpl();
	    int i=pd.Update(pj);
		
		if(i>0)
		
		{
			RequestDispatcher rd=request.getRequestDispatcher("UpdateProduct.jsp");
			rd.forward(request, response);
		}
		
		else {
			
			out.print("not updated");
		}
	    
		return;
		
		
   
	}

}
