<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title>  

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">

</head>  
<body>  
  
<%@page import="repository.JSTLFlightDAO,uEntities.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  
  <br>
<div class="container">
    
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images\1.jpg" style="width:100%;">
      </div>

      <div class="item">
        <img src="images\2.jpg" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="images\3.jpg"style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
     
   <br>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="AddFlightDetails.html">Add Flight Details</a></li>
        <li><a href="ViewFlightDetails1.jsp">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp View Flight Details</a></li>
        <li><a href="ViewTransaction.html">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp View Transaction</a></li>
        <li><a href="AddNotice.html">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Add Notice</a></li>
        <li><a href="Home.html">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Logout</a></li>
      </ul>
     
    </div>
  </div>
</nav> 
  
<%  
List<JSTLFlight> list=JSTLFlightDAO.getAllRecords();  

request.setAttribute("list",list);  
%>  
  
 <div id="page">
 <div id="content">
<table border="1" width="100%">  
<tr><th>FlightId</th><th>AirlineId</th><th>AirlineName</th><th>From</th>  
<th>To</th><th>Departure</th><th>Arrival</th><th>Price</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getFlightId()}</td><td>${u.getAirlineId()}</td><td>${u.getAirlineName()}</td>  
<td>${u.getFrom()}</td><td>${u.getTo()}</td><td>${u.getDeparture()}</td><td>${u.getArrival()}</td><td>${u.getPrice()}</td>    
 <td><a href="editform.jsp?id=${u.getFlightId()}">Edit</a></td>  
 <td><a href="deleteuser.jsp?id=${u.getFlightId()}">Delete</a></td></tr> 
</c:forEach>  
</table>  
 </div>
 </div>
  </br>
  <footer>
<center>
<small>
&copy; Aproject by  Pooja Aman Ritu Smita PARS.co 2019,All Rights Reserved

</small>
</center>
</footer>
<br>
</body>  
</html>