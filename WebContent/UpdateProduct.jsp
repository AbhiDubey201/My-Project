<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="CSS/Product.css"/>

<meta charset="ISO-8859-1">
<title>Update Product</title>
</head>
<body>

<div class="div">

<form  method="post" action="UpdateProduct">

<h1 style="text-align:center;">Update Product</h1>

 Id:         <input type="text" name="Id" class="txt1" readonly="readonly" value="${id.id }"><br>
 Name:       <input type="text" name="name" class="txt2" value="${id.name }"><br>
 Description:<input type="text" name="description" class="txt3" value="${id.description }"><br>
 Category_Id:<input type="text" name="category" class="txt4" value="${id.categoryId }"><br>
 Price:      <input type="text" name="price" class="txt5" value="${id.price}"><br>
 Quantity:   <input type="text" name="quantity" class="txt6" value="${id.quantity }"><br>
             <input type="file" name="img" class="txt7" value="${id.img}"><br>
             <input type="Submit" value="Update" class="btn" ><br>

</form>
</div>
</body>
</html>