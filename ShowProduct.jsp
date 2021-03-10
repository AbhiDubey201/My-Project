<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>product</title>
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
	
    <div class="container">
  <div class="card">
	<div class="row">
	  <aside class="col-sm-5 border-right">
        <article class="gallery-wrap"> 
          <div class="img-small-wrap">
             <div class="item-gallery"> <img src="${id.img }" class="img-fluid" style="width:500px;height:500px;"> </div>
          </div>
        </article>
      </aside>
	  <aside class="col-sm-7">
        <article class="card-body p-5">
	      <h3 class="title mb-3">${id.name }</h3>
          <p class="price-detail-wrap"> 
	        <span class="price h3 text-warning"> 
		      <span class="currency">Rs. </span><span class="num">${id.price }</span>
	        </span> 	 
          </p>
        <dl class="item-property">
          <dt>Description</dt>
          <dd><p>${id.description } </p></dd>
		</dl>
		<dl class="param param-feature">
          <dt>Product ID#</dt>
  	      <dd>${id.id }</dd>
		</dl>
		<dl class="param param-feature">
  		  <dt>Color</dt>
  		  <dd>Black,white and blue</dd>
		</dl>
		<dl class="param param-feature">
  		  <dt>Delivery</dt>
  		  <dd>All over India</dd>
		</dl>
        <hr>
	    <div class="row">
		  <div class="col-sm-5">
			<dl class="param param-inline">
			  <dt>Quantity: </dt>
			  <dd>
			  	<select class="form-control form-control-sm" style="width:70px;">
			  	  <option> 1 </option>
			  	  <option> 2 </option>
			  	  <option> 3 </option>
			  	</select>
			  </dd>
			</dl>
		  </div>
		</div> 
	   <hr>
	   <a href="Cart.jsp" class="btn btn-lg btn-primary text-uppercase"> <i class="fa fa-cart-plus"></i> Add to cart </a>
	   <a href="index.jsp" class="btn btn-lg btn-outline-primary text-uppercase"> Back </a>
     </article> 
   </aside>
  </div>
</div> 
</div>
</body>
</html>