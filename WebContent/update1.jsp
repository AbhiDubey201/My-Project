<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link  href="CSS/Login.css"  rel="stylesheet"/>
<meta charset="ISO-8859-1">
<title>update1</title>
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
<%String name="";%>


<div class="container-fluid bg-white py-5">
    <div class="row">
        <div class="col-md-4 mx-auto">
                <div class="card card-body">
                    <h3 class="text-center mb-4 font-weight-bold ">Customer Info</h3>
                         <fieldset>
                          <form method="post" action="CustomerServe" name="#">
                           <div class="form-group">
                              <label for="exampleInputEmail1">Full Name</label>
                              <input type="text"  name="username" class="form-control bg-white" id="firstname" aria-describedby="emailHelp" placeholder="Enter FullName"  value="<%name=(String)session.getAttribute("uname");
                               out.println(name);
                              %>" class="field left" readonly="readonly">
                           </div>
                           <div class="form-group">
                              <label for="exampleInputEmail1">Contact Number</label>
                              <input type="text"  name="number" class="form-control" id="lastname" aria-describedby="emailHelp" placeholder="Enter Contact number"  
                              >
                           </div>
                           <div class="form-group">
                              <label for="exampleInputEmail1">Email address</label>
                              <input type="email" name="email"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                           </div>
                           <div class="form-group">
                              <label for="exampleInputEmail1">Password</label>
                              <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password">
                           </div>
                           <div class="col-md-7 text-center mb-3  mx-auto d-block">
                              <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Update</button>
                              
                           </div>
                   
                           
                           </form>
                           
                           
                    </fieldset>
                    
                    
                </div>
                
          </div>
            </div>
</div>
</body>
</html>