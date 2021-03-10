package com.com.cart;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.ProDao;
import com.example.ProImpl;
import com.example.ProductPojo;

@WebServlet("/CartProducts")
public class CartProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private HttpSession httpSession;
	private ProDao productDAO;
	private ProductPojo product;
	private Cart cart;
	private int productId;
	private int productQuantity;
	private int cartQuantity;
	private List<Cart> cartProducts;
	private Iterator<Cart> iterator;
	private String forwardTo;
	private boolean flag;
	private RequestDispatcher requestDispatcher;
	 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try
		{
			httpSession = request.getSession(false); 
			
				flag = true;
				productId = Integer.parseInt(request.getParameter("productId"));
				
				if(request.getParameter("productQuantity") != null )
					productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
				
				else
					productQuantity = 1;
				
				cart	   = new Cart();
				productDAO = new ProImpl();
				product	   = productDAO.GetProductbyId(productId);
				
				if(product.getQuantity() < productQuantity)
				{
					requestDispatcher = request.getRequestDispatcher("/index.jsp");
					requestDispatcher.forward(request, response);
				}
				
				else
				{
					product.setQuantity(productQuantity);
					product.setPrice(productQuantity*product.getPrice());

					cartProducts = (List<Cart>) httpSession.getAttribute("cartProducts");
					iterator	 = cartProducts.iterator();
					
					while(iterator.hasNext())
					{
						Cart tempCart = iterator.next();
						ProductPojo tempProduct = tempCart.getProduct();
						if(productId == tempProduct.getId() )
						{
							int tempPrice = tempProduct.getPrice()/tempProduct.getQuantity();
							tempProduct.setQuantity(product.getQuantity()+tempProduct.getQuantity());
							tempProduct.setPrice(tempProduct.getQuantity()*tempPrice);
							flag = false;
							break;
						}
					}
				
					cartQuantity = (int)httpSession.getAttribute("cartQuantity");
					cart.setProduct(product);
				
					if(flag)
					{
						cartProducts.add(cart);
						cartQuantity = cartQuantity+1;
					}
				
				
					httpSession.setAttribute("cartProducts", cartProducts); 
					httpSession.setAttribute("cartQuantity", cartQuantity);
					
					forwardTo = request.getParameter("buyNow");
				
					if(forwardTo != null)
					{
						if(forwardTo.equalsIgnoreCase("false"))
						{
							requestDispatcher = request.getRequestDispatcher("CartAmount");
							requestDispatcher.include(request, response);
							requestDispatcher = request.getRequestDispatcher("/index.jsp");
							requestDispatcher.forward(request, response);
						}
				
						else
						{
							requestDispatcher = request.getRequestDispatcher("CartAmount");
							requestDispatcher.include(request, response);
							requestDispatcher = request.getRequestDispatcher("/BuyNow");
							requestDispatcher.forward(request, response);
						}	
					}
				
					else
					{
						requestDispatcher = request.getRequestDispatcher("CartAmount");
						requestDispatcher.include(request, response);
						requestDispatcher = request.getRequestDispatcher("/index.jsp");
						requestDispatcher.forward(request, response);
					}
				
				}
			
		}
		
		catch(Exception e)
		{
			System.out.println("--------------------- EXCEPTION FROM CART.JAVA ------------------------------");
			e.printStackTrace();
		}

	}
	
	
	


}
