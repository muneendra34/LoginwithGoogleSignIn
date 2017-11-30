<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>::Welcome to ProjectA::</title>
  <meta name="google-signin-client_id" content="103095023697-pkq4skdqng5e8opkmlcc9o1lav2gp4t2.apps.googleusercontent.com">
  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  
  
  <script type="text/javascript">
      function onSignIn(googleUser) {
      var profile = googleUser.getBasicProfile();
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden";
      document.getElementById("myB").style.visibility = "visible";
      document.getElementById("myC").style.visibility = "visible";
      document.getElementById("status").innerHTML ='Welcome <br><br> E-mail : '+email+'<br><br><br><div id="myB1"><button onclick="signout()" class="btn btn-primary>Sign Out</button></div>'
      
   }
   </script>
   
    <script type="text/javascript" >
      function signout() {
	      window.location.href="https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=http://localhost:8987/ProjectA/loggedout.html";
   }
   </script>
  
</head>
<body>
<br><br><br>
 <div class="g-signin2" data-onsuccess="onSignIn" id="myP" style="display:none"></div>  
<div class="card mx-auto" style="width:290px" id=myC>
     <img id="myImg" class="card-img-top" style="width:100%">
     <div class="card-body">
     <h4 class="card-title"><p id="name"></p></h4>
     <div id="status"></div>
     <div id="myB" style="display"><button onclick="signout()" class="btn btn-primary">Sign Out</button></div>
   </div>
 </div>
   
</body>
</html>