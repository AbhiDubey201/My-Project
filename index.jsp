<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"   
 pageEncoding="ISO-8859-1" isELIgnored="false" session="true" %>
<%@include file="Header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home page</title>
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
 
 </head>
<body>
 <%request.getRequestDispatcher("/HomePage").include(request,response);%>
 
 <!-- carousel -->
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel"style="padding-top:1px;" >
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner height:400px">
          <div class="carousel-item active">
              <!-- Use 'www.pixabay.com to download images -->
              <!-- Resize the image to 1920x655 resolution by visiting http://www.simpleimageresizer.com -->
            <img class="d-block w-100" src="images/carousel/n.jpg".jpg" alt="First slide" style="height: 650px;" >
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="images/carousel/b.jpg" alt="Second slide" style="height: 650px;">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="images/carousel/c.jpg" alt="Third slide" style="height: 650px;"> 
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
           <span class="sr-only">Next</span>
        </a>
        </div>
<!-- carousel -->
  <!--#########################################################################################################################-->
   
         <div id="shoes" class="container-fluid" style = "padding-top:20px;">
          <h1 class="display-4"  style="padding-bottom:5px;color:#314152;text-align: center;text-decoration:underline;font-weight:bold;" >Trending Shoes</h1>
          <div class="row">
          <c:forEach begin="0" end="4" items="${product}" var="product">
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
	  <!-- ########################################################################################################################-->

</body>

<%@ include file="Footer.jsp" %>
</html>
