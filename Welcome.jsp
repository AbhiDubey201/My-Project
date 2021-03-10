<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
 <%@ include file="Header.jsp" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">

<title>Customer page</title>
</head>
<body>
<%
if(session.getAttribute("uname")==null)
	response.sendRedirect("index.jsp");
%>

<%!
String msg ="";
String Name="";
%> 

  <%
 Name=(String)session.getAttribute("uname");

out.println("Hello "+ Name);
%>
   
<% 
msg=(String)request.getAttribute("true2");
        if(msg!=null)
       out.println(msg);
%>

   <div>
    <c:forEach items="${key}" var="ky">
    <tr><td><img style="width: 200px;height: 200px;" src="${ky.img}"></td> 
    <td><input type="button" value="Add Cart"></td>
    <td><input type="button" value="Details"></td>
    </tr>
    </c:forEach>
    </div>
    
<%@ include file="Footer.jsp" %>
</body>
</html>