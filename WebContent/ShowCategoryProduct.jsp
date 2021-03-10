<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div id="shoes" class="container-fluid" style = "padding-top:20px;">
          <h1 class="display-4"  style="padding-bottom:5px;color:#314152;text-align: center;text-decoration:underline;font-weight:bold;" >Trending Shoes</h1>
          <div class="row">
          <c:forEach begin="0" end="4" items="${products}" var="product">
          <div class="col-md-3">
          <div class="card"  style="margin-bottom:10px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
          <div>
        	<input type="hidden" name="request_coming" value="index">  
        	<!--onClick="window.location.href='GetProductById?id=${product.id}'"-->
       		        <a href="GetProduct?id=${product.id}"  target="_blank" data-toggle="tooltip" title="show details" style="cursor: pointer;">
        			 <img class="card-img" src="${product.img}" alt="product image" width="600px" height="250px">
					</a>
			</div>	
        
        
        <div class="card-body">
          <h4 class="card-title">${product.name}</h4>
           <div class="buy d-flex justify-content-between align-items-center">
            <div class="price"><h5 class="mt-4" style="color:#314152">Rs: ${product.price }</h5></div>
             <a  class="btn mt-3 text-light" href="CartProducts?productId=${product.id}" style="background-color:#314152">Add to Cart <i class="fas fa-shopping-cart"></i></a>
          </div>
      </div>
      </div>
    </div>
   </c:forEach>
 <div style="padding-top:10px;margin-right: 1%;" class="ml-auto"> 
             <%session.setAttribute("requestFrom","index.jsp");%>
          <!-- <button type="button" class="btn btn-lg text-light" onClick="window.location.href='GetProductByCategory?categoryName=smartphone'" style="height:50px;background-color: #314152">All Shoes</button>  --> 
           </div>
          </div>
        </div> 

</body>
<%@ include file="Footer.jsp" %>
</html>