<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
 <link rel="stylesheet" href="CSS/Login.css"/>
   
<title>LOGIN</title>
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
 
<%!
String msg="";
String message="";
%>

<div class="container">
        <div class="row">
			<div class="col-md-5 mx-auto">
			<div id="first">
				<div class="myform form ">
					 <div class="logo mb-3">
						 <div class="col-md-12 text-center">
							<h1>Login</h1>
						 </div>
					</div>
                   <form action="LoginServe" method="post" name="LoginServe">
                           <div class="form-group">
                              <label for="exampleInputEmail1">NAME</label>
                              <input type="text" name="username"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter Name">
                           </div>
                           <div class="form-group">
                              <label for="exampleInputEmail1">Password</label>
                              <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password">
                           </div>
                           
                           <div class="col-md-12 text-center ">
                              <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
                           </div>
                           <div class="col-md-12 ">
                              <div class="login-or">
                                 <hr class="hr-or">
                                 <span class="span-or">or</span>
                              </div>
                           </div>
                           
                           <div class="form-group">
                              <p class="text-center">Don't have account? <a href="#" id="signup">Sign up here</a></p>
                           </div>
                        </form>
                 				</div>
			</div>
			  <div id="second">
			      <div class="myform form ">
                        <div class="logo mb-3">
                           <div class="col-md-12 text-center">
                              <h1 >Signup</h1>
                           </div>
                        </div>
                        <form method="get" action="LoginServlet" name="#">
                           <div class="form-group">
                              <label for="exampleInputEmail1">Full Name</label>
                              <input type="text"  name="username" class="form-control" id="firstname" aria-describedby="emailHelp" placeholder="Enter FullName">
                           </div>
                           <div class="form-group">
                              <label for="exampleInputEmail1">Contact Number</label>
                              <input type="text"  name="number" class="form-control" id="lastname" aria-describedby="emailHelp" placeholder="Enter Contact number">
                           </div>
                           <div class="form-group">
                              <label for="exampleInputEmail1">Email address</label>
                              <input type="email" name="email"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                           </div>
                           <div class="form-group">
                              <label for="exampleInputEmail1">Password</label>
                              <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password">
                           </div>
                           <div class="col-md-12 text-center mb-3">
                              <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">SignUp</button>
                           </div>
                           <div class="col-md-12 ">
                              <div class="form-group">
                                 <p class="text-center"><a href="#" id="signin">Already have an account?</a></p>
                              </div>
                           </div>
                            </div>
                        </form>
                     </div>
			</div>
		</div>
      </div>
      
      <script type="text/javascript">
      $("#signup").click(function() {
    	  $("#first").fadeOut("fast", function() {
    	  $("#second").fadeIn("fast");
    	  });
    	  });

    	  $("#signin").click(function() {
    	  $("#second").fadeOut("fast", function() {
    	  $("#first").fadeIn("fast");
    	  });
    	  });


    	    
    	           $(function() {
    	             $("form[name='login']").validate({
    	               rules: {
    	                 
    	                 email: {
    	                   required: true,
    	                   email: true
    	                 },
    	                 password: {
    	                   required: true,
    	                   
    	                 }
    	               },
    	                messages: {
    	                 username: "Please enter a valid UserName",
    	                
    	                 password: {
    	                   required: "Please enter password",
    	                  
    	                 }
    	                 
    	               },
    	               submitHandler: function(form) {
    	                 form.submit();
    	               }
    	             });
    	           });
    	           


    	  $(function() {
    	    
    	    $("form[name='registration']").validate({
    	      rules: {
    	        fullname: "required",
    	        
    	        email: {
    	          required: true,
    	          email: true
    	        },
    	        password: {
    	          required: true,
    	          minlength: 5
    	        }
    	      },
    	      
    	      messages: {
    	        fullname: "Please enter your firstname",
    	        
    	        password: {
    	          required: "Please provide a password",
    	          minlength: "Your password must be at least 5 characters long"
    	        },
    	        email: "Please enter a valid email address"
    	      },
    	    
    	      submitHandler: function(form) {
    	        form.submit();
    	      }
    	    });
    	  });

      
      
      
      </script>
  
         
</body>
</html>
    