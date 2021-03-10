<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

 
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="CSS/WelcmAdmin.css"/>

</head>
 
<body>

<div class="div">
<form method="post">
<h1 style="text-align:center;">Welcome</h1>
<input type="submit" formaction="showcategoryname" value="ADD PRODUCTS" class="btn">
<input type="submit" formaction="ShowAllProducts" value="SHOW PRODUCTS" class="btn1">
<input type="submit" formaction="Category.jsp" value="ADD CATEGORY" class="btn2">
<input type="submit" formaction="ShowAllCategory" value="SHOW CATEGORY" class="btn3">


</form>
</div>
</body>
</html>