<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
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
  
<meta charset="ISO-8859-1">
<title>Header</title>
  <style type="text/css">
    .bs-example{
        margin: 0px;}
         </style>
    
</head>
<body>


<%
String uname= (String)session.getAttribute("uname");
%>
       <div class="bs-example">
    <nav class="navbar navbar-expand-md navbar-dark  bg-dark">
       <a href="index.jsp" class="navbar-brand">SHOES FACTORY</a>
         <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav">


                 <a href="index.jsp" class="nav-item nav-link active">HOME</a>
                 <a href="#" class="nav-item nav-link">ABOUT</a>
                 <a href="Admin.jsp" class="nav-item nav-link">Admin</a>
                 <a href="cart.jsp" class="nav-item nav-link">Cart</a>
                 
                 
                


   <div class="dropdown">
   <button class="btn btn-outline-dark  text-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="z-index:-2">
    Category
   </button>
   <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
       <c:forEach items="${category}" var="categories" >
                  	<input type="hidden"  name="categoryId" value="${categories.categoryId}">
					<a class="dropdown-item" href="GetProductByCategory?categoryId=${categories.categoryId}">${categories.categoryName}</a>
	  </c:forEach >
       
   </div>
   </div> 
   
          <!--    <div class="dropdown">
      <button class="btn btn-outline-dark text-secondary dropdown-toggle" type="button" id="about-us" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      CATEGORY
      </button>
     </div>  -->
     
                
                 </div>
     </div>
     
     
             <div class="dropdown">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" class="dropdown">
     <%!
String msg ="";
String Name="";
%> 

  <%
 Name=(String)session.getAttribute("uname");

out.println("Hello "+ Name);

%>
    </button>
    <div class="dropdown-menu">
      <%if(uname==null){
    	  
       out.println("<a class=\"dropdown-item\" href=\"Login.jsp\">Login</a>");
          }
          %> 
      <a class="dropdown-item" href="update1.jsp">Customer Info</a> 
      <a class="dropdown-item" href="DeleteServe">Delete</a>
        <%if(uname!=null){
       out.println("<a class=\"dropdown-item\" href=\"LogOut\">Logout</a>");
          }
          %>
        
  </div>
  </div>
       
     

  </nav>

  
  </div>
       

</body>


</html>