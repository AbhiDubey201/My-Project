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

@WebServlet("/LoginServe")
public class LoginServe extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	boolean b1;
    
    public LoginServe() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		PrintWriter out=response.getWriter();
		UserPojo pojo=new UserPojo();
		String username=request.getParameter("username");
		String pass=request.getParameter("password");
		pojo.setUsername(username);
		pojo.setPassword(pass);
	    DAO obj1=new DaoImpl();
	  
	    b1= obj1.login(pojo);
		if(b1==true)
		{
		    
			session.setAttribute("uname",pojo.getUsername());
			  ProDao dao= new ProImpl();
				
				session.setAttribute("key", dao.getAll());
			RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
		  
			
			
		}
		else {
			String message="error in login name or password";
		    request.setAttribute("true1",message);
			RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
			
			rd.include(request, response);
				
		}		
	}
}
