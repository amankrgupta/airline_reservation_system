<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
<title>JINSERT Operation</title>
</head>
<body>
<!-- http://www.javaknowledge.info/jstl-1-1-simple-insert-update-delete-example/
 -->
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/airlinesystem"
     user="root"  password="smita"/>
  
  
<sql:update dataSource="${snapshot}" var="result">
delete from addflight where `flightId`=<%=request.getParameter("id") %>;



</sql:update>

<% response.sendRedirect("ViewFlightDetails1.jsp");   %>


<%-- <sql:update dataSource="${snapshot}" var="result">
INSERT INTO emp VALUES (777,'Neha', 'neha@gmail.com');
</sql:update> --%>

<%-- <sql:query dataSource="${snapshot}" var="result">
SELECT * from addflight;
</sql:query>

<table border="1" width="100%">
<tr>
   <th>flightId</th>
   <th>airlineId</th>
   <th>airlineName</th>
   <th>from</th>
   <th>to</th>
   <th>departure</th>
   <th>arrival</th>
   <th>price</th>
   
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.flightId}"/></td>
   <td><c:out value="${row.airlineId}"/></td>
   <td><c:out value="${row.airlineName}"/></td>
   <td><c:out value="${row.from}"/></td>
   <td><c:out value="${row.to}"/></td>
   <td><c:out value="${row.departure}"/></td>
   <td><c:out value="${row.arrival}"/></td>
   <td><c:out value="${row.price}"/></td>
   
   
</tr>
</c:forEach>
</table>--%>

</body>
</html>