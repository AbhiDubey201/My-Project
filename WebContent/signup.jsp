<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
   <link rel="stylesheet" href="CSS/Signup.css"/>
<title> signup </title>
</head>
<body>
<div class="div">

<form method="get" action="LoginServlet" class="form">


<h1 style="text-align:center;">SIGN UP</h1> 

FIRST NAME:   <input type="text"  name="username" class="txt1" required><br>

PASSWORD:     <input  type="text"  name="password" class="txt2" required><br>

CONTACT NO:   <input  type ="text" name="number"   class="txt3" required><br>

EMAIL:        <input  type ="text" name="email"    class="txt4" required><br>

              <input  type="submit" value="SIGNUP" class="BTN"/>
</form>
</div>
</body>
</html>