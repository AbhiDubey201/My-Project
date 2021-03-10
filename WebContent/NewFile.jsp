<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link  href="CSS/NewFile1.css"  rel="stylesheet"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

<div class="col-sm-12 col-md-12 col-lg-8" style="margin-left:250px">
    		<!-- product -->
			<div class="product-content product-wrap clearfix product-deatil">
				<div class="row">
						<div class="col-md-5 col-sm-12 col-xs-12 ">
							<div class="product-image"> 
								<div id="myCarousel-2" class="carousel slide">
								
								<div class="carousel-inner">
									
									<div class="item">
										<img src="${id.img }" class="img-fluid" style="width:350px;height:350px;">
									</div>
								</div>
								<a class="left carousel-control" href="#myCarousel-2" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> </a>
								<a class="right carousel-control" href="#myCarousel-2" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> </a>
								</div>
							</div>
						</div>
						<div class="col-md-7 col-sm-12 col-xs-12">
					
						<h2 class="name">
							${id.name}
							<br>
							<i class="fa fa-star fa-2x text-primary"></i>
							<i class="fa fa-star fa-2x text-primary"></i>
							<i class="fa fa-star fa-2x text-primary"></i>
							<i class="fa fa-star fa-2x text-primary"></i>
							<i class="fa fa-star fa-2x text-muted"></i>
													</h2>
						<hr>
						<h3 class="price-container">
							${id.price}
							<small>*includes tax</small>
						</h3>
						<div class="certified">
							<ul>
							
								<li><a href="javascript:void(0);">Delivery time<span>7 Working Days</span></a></li>
								<li><a href="javascript:void(0);">Certified<span>Quality Assured</span></a></li>
								
							</ul>
							<select name ="ProductQuantity" class="form-control-form-sm" style="width:70px;">
                                <option> 1 </option>
                                <option> 2 </option>
                                <option> 3 </option>
                                <option> 4 </option>
                                <option> 5 </option>
                              </select>
						</div>
						<hr>
						<div class="description description-tabs">
							<ul id="myTab" class="nav nav-pills">
								<li class="active">
								<h4>Product Description</h4><h6>${id.description }</h6></li>
							
															</ul>
							<div id="myTabContent" class="tab-content">
								<div class="tab-pane fade active in" id="more-information">
									<br>
									
					</div>
								</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-sm-12 col-md-6 col-lg-6">
									<a href="javascript:void(0);" class="btn btn text-light btn-lg" style="background-color:#314152">Add to cart <i class="fas fa-shopping-cart"></i></a>
							
							</div>
							<a href="javascript:void(0);" class="btn btn text-light btn-lg" style="background-color:#314152">Buy Now <i class="fas fa-shopping-cart"></i></a>
							
						</div>
					</div>
				</div>
			</div>
			<!-- end product -->
		</div>
		
<%@ include file="Footer.jsp" %>
</body>
</html>