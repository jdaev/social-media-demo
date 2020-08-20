<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
    
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <!-- Popper JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style><%@include file="/navbar.css"%></style>
</head>
<body>
<nav class="navbar navbar-expand-lg  navbar-light" style="background-color:#00b7c2;">
    <a class="navbar-brand" class='logo' href="<%= request.getContextPath()%>/home.jsp">Social Spark</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
        
        <li class="nav-item">
          <a class="nav-link menu" href="<%= request.getContextPath()%>/home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link menu" href="<%= request.getContextPath()%>/myaccount.jsp">My Account<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link menu" href="#">Search</a>
        </li>  
        <li class="nav-item">
          <a class="nav-link menu" href="#">Settings</a>
        </li>  
        <li class="nav-item">
          <a class="nav-link menu" href="#">Logout</a>
        </li>          
      </ul>
    </div>
  </nav>
</body>
</html>