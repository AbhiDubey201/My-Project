package com.example;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.category.CategoryPojo;

@WebServlet("/GetProductByCategory")
public class GetProductByCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int categoryId;
	private ProDao productDAO;
	private HttpSession httpSession;
	private String categoryName,requestFrom;
	private List<CategoryPojo> categories;
	private Iterator<CategoryPojo> iterator;
	
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			httpSession = request.getSession(false);
			
			productDAO  = new ProImpl();
			categoryId   = Integer.parseInt(request.getParameter("categoryId"));
			System.out.println(categoryId);
			httpSession.setAttribute("products", productDAO.getProducts(categoryId));
			request.getRequestDispatcher("/ShowCategoryProduct.jsp").forward(request, response);
			
			
		}
			catch(Exception e) {
				e.printStackTrace();
			}
				
			
			
			
			
					}
}

	



