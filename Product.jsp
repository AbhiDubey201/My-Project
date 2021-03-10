<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="CSS/Product.css"/>

<meta charset="ISO-8859-1">
<title>Product</title>
</head>
<body>

<div class="div">

<form  method="get" action="ProServlet">

<h1 style="text-align:center;">Add Product</h1>

 
 Name:       <input type="text" name="name" class="txt2"><br>
 Description:<input type="text" name="description" class="txt3"><br>
 <!-- Category_Id:<input type="number" name="categoryid" class="txt4"><br> -->

<div  class="category-select"><label >Select Category :</label>
<select id="inputGroupSelect01" name="categoryid">

<c:forEach items="${categoryname}" var="category" >
	                 
	 <option   value="${category.categoryId}"> ${category.categoryName} </option>
			</c:forEach>			
	  	  </select>
	  	  </div>
 Price:      <input type="text" name="price" class="txt5"><br>
 Quantity:   <input type="text" name="quantity" class="txt6"><br>
             <input type="file" name="img" class="txt7"><br>
             <input type="Submit" value="ADD" class="btn"><br>

</form>
</div>
</body>
</html>