<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/Signup.css"/>
<meta charset="ISO-8859-1">
<title>Customer</title>

</head>
 <body>
<div class="div">
 <%String name="";%>

<form method="post" action="CustomerServe" class=form>

<h1 style="text-align:center;">CUSTOMER INFO</h1>
Name:         <input type="text"  name="username"  class="txt1 " value="<%name=(String)session.getAttribute("uname");
out.println(name);
%>" class="field left" readonly="readonly"><br>
PASSWORD:     <input  type="text"  name="password" class="txt2"><br>
CONTACT NO:   <input  type ="text" name="number"  class="txt3"><br>
EMAIL:        <input  type ="text" name="email" class="txt4"><br> 
              <input  type="submit" value="UPDATE" class="BTN"/>
              
 

</form>
</div>
</body>
</html>  