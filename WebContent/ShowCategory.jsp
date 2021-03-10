<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Category</title>
</head>
<body>

<form method="post">
<h1 style="text-align:center;">Show Category</h1>
<table class="table" >
  <thead>
    <tr>
      <th scope="col">Category Id</th>
      <th scope="col"> Category Name</th>
     
    </tr>
  </thead>
  <tbody>  
 
  	  <c:forEach items="${category}" var="categories">
       <tr>
         <td>${categories.categoryId}</td>
         <td>${categories.categoryName}</td>
       	 <td>   
      		<input type="submit" formaction="DeleteCategoryId?CategoryId=${categories.categoryId}" value="Delete" >
      		
      	 </td>
       </tr>
     </c:forEach>
   
 </tbody>
</table>
</form>

</body>
</html>