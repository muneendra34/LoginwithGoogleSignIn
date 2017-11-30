<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);

if(session.getAttribute("email")==null)
    response.sendRedirect("loggedout.html");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>::Welcome to ProjectA::</title>
   <script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="103095023697-pkq4skdqng5e8opkmlcc9o1lav2gp4t2.apps.googleusercontent.com">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
 
</head>
<body>   
<br><br>
<div class="card mx-auto" style="width:290px">
     <img src="images/Minions.jpg" class="card-img-top" style="width:100%">
     <div class="card-body">
     <h4 class="card-title"><p id="name">
     <%= session.getAttribute( "name" ) %>
     </p></h4>
     <div id="status">Welcome</div>
     <br>
     Email : <br><%= session.getAttribute("email") %>
     <br><br>
     <div id="myB" style="display"><a href="LogoutServlet"><button class="btn btn-primary">Sign Out</button></a></div>
   </div>
 </div>


</body>
</html>