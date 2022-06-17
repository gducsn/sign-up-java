
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/x-icon" href="https://img.icons8.com/external-inipagistudio-mixed-inipagistudio/344/external-registration-form-online-therapy-inipagistudio-mixed-inipagistudio.png
">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
<title>Registration completed</title>
</head>
<body>

<% 
String firstname = request.getParameter( "firstname" );
String upname = firstname.substring(0, 1).toUpperCase() + firstname.substring(1);
String username = request.getParameter( "username" );
String email = request.getParameter( "email" );
%>

<div class="d-flex flex-column justify-content-center align-items-center p-5">

<h4>Hi <%= upname %>, you registered with this email: <%= email %>.</h4>
<h5 class="p-2">Your username is: <%= username %></h5>

<h6 class="p-5 m-5 justify-content-start"><a href="<%=request.getContextPath()%>/logout"class="nav-link">Logout.</a></h6>

</div>





<body>




</body>
</html>