<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<!--  <body onload="myFunction()">
<script>
function myFunction(){ alert('You have been Successfully logged IN!');}
</script> -->
<script>
<%   
String username=request.getParameter("userid");
String userId=config.getInitParameter("user1"); 
String pass=request.getParameter("password");
String cpass=config.getInitParameter("password1");
if(username.equals(userId))
	{
	if(pass.equals(cpass))
	{   
		
		response.sendRedirect("ALogin.jsp");
		 //out.println("<!DOCTYPE html><html><body ><script></script></body></html>");
		
	}
	}
   else
   {
	  // out.println("<!DOCTYPE html><html><body onload='myFunction()'><script>function myFunction(){ alert('You have been Successfully logged IN!');}</script></body></html>");
	   response.sendRedirect("AdminLogin.html");
    }


%>  
</script>
</body>
</html>