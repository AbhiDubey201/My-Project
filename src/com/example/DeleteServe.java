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

/**
 * Servlet implementation class DeleteServe
 */
@WebServlet("/DeleteServe")
public class DeleteServe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
    public DeleteServe() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserPojo up1= new UserPojo();
	    HttpSession session=request.getSession();
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
	    String uname=(String)session.getAttribute("uname");
	    DAO dao= new DaoImpl();
	    int status=dao.Delete(uname);
	    
	    if(status>0) {
	    	
	    	RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
	    	rd.forward(request, response);
	  
	    }
	    else {
	    	
	    	out.println("WRONG");
	    	RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp#");
	    	rd.forward(request, response);
	    	
	    }
		
		

	}


	}

