package com.example;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.category.CategoryDao;
import com.example.category.CategoryDaoImpl;
import com.example.category.CategoryPojo;


@WebServlet("/HomePage")
public class HomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
   	 private List<CategoryPojo> category;
   	 private Iterator<CategoryPojo> iterator;
   	 private CategoryPojo categories;
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
		
		 CategoryDao categorydao = new CategoryDaoImpl();
		 ProDao productdao = new ProImpl();
		 HttpSession session = request.getSession();
		
		
		/*  iterator = category.iterator();
		  while(iterator.hasNext()) {
			  categories=iterator.next();
			  request.setAttribute(categories.getCategory_Name(), (categories.getCategory_Id()));
			  
		  }*/
		
		 session.setAttribute("product", productdao.getAll());
		 session.setAttribute("category", categorydao.getAll());
		 System.out.println(categorydao.getAll());
		 response.sendRedirect("index.jsp");
		 
		 
		 
				}
	}
