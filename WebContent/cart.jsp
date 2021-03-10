<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- BOOTSTRAP -->
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
		<script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="bootstrap/js/bootstrap.bundle.min.js"></script>  
        <script src="bootstrap/jquery/jquery-3.2.1.min.js"></script>  
        <script src="bootstrap/jquery/popper.min.js"></script>  
        <script src="bootstrap/jquery/bootstrap.min.js"></script>  
        <!-- BOOTSTRAP -->
		
         <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
<div class="container" style="padding-top:50px;">
<div class="display-3 text-center" style="padding-bottom:30px;">Shopping Cart</div>
<table class="table table-hover table-sm table-striped table-bordered" >
  <thead>
    <tr>
      <th scope="col">No.</th>
      <th scope="col">Product Name</th>
      <th scope="col">Image</th>
      <th scope="col">Quantity</th>
      <th scope="col">Amount</th>
      <th scope="col">Add/Delete</th>
    </tr>
  </thead>
  
 <tbody>  
  	<c:forEach items="${cartProducts}" var="product">
  		<tr>
  			<td class="col-1">  </td>
  			<td class="col-2" > ${product.product.name}</td>
  			<td class="col-2" > <img src="images/product image/${product.product.id}.jpg" class="img-responsive" alt="Image not found :/" width="200px" height="100px" > </td>
  			<td class="col-1" > ${product.product.quantity }</td>
  			<td class="col-2" > ${product.product.price}</td>
  			<td class="col-2" > 

			<div>
  				<div class="btn-group" role="group" aria-label="Basic example">
  					<button type="button" onClick="window.location.href='DeleteProductFromCart?productId=${product.product.id}'" class="btn btn-sm btn-primary"> - </button>
  					<button type="button" class="btn btn-sm btn-primary disabled"> ${product.product.quantity } </button>
  					<button type="button" onClick="window.location.href='AddProductToCart?productId=${product.product.id}'"    class="btn btn-sm btn-primary"> + </button>
				</div>

				<a href="DeleteCartProduct?productId=${product.product.id}" >
	        		<img src="images/other/delete.png" width="25" height="25" >
				</a>
			</div> 	
 			
 			</td>
  		
  		</tr>
  	</c:forEach>
  	
  	
  	<c:if test="${cartProducts ne null }">
  	<tr>
  		<td></td>
  		<td></td>
  		<td></td>
  		<th>Total</th>
  		<td>${cartAmount}</td>
  		<td><input type="button" onClick="window.location.href='buynow.jsp'" class="btn btn-sm btn-primary" value="BuyNow"></td>
	</tr>
  	</c:if>
  	
  	
 </tbody>

</table>
</div>
</body>
<%@ include file="Footer.jsp" %>
</html>