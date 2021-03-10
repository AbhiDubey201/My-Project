<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>show all products</title>
</head>
<body>

<form method="post">
<h1 style="text-align:center;">Show Products</h1>
<table class="table" >
  <thead>
    <tr>
      <th scope="col">Image</th>
      <th scope="col">Name</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
      <th scope="col">Description</th>
      <th scope="col">Operation</th>
     
    </tr>
  </thead>
  <tbody>   
 
  	   <c:forEach items="${products}" var="product">
       <tr>
         <td class="col-1"><img src="${product.img}" class="img-responsive" alt="Image not found :/" width="200px" height="100px" > </td>
         <td class="col-3">${product.name}</td>
         <td class="col-1">${product.price}</td>
		 <td class="col-1">${product.quantity}</td>
       	 <td class="col-3">${product.description}</td>
       	
       	 <td class="col-2">
       	 
       		<input type="submit" formaction="GetProductById?id=${product.id}" value="Update" >
      		<input type="submit" formaction="DeleteProduct?id=${product.id}" value="Delete" >
      		
      	 </td>
       </tr>
     </c:forEach>
   
 </tbody>
</table>
</form>
</body>
</html>