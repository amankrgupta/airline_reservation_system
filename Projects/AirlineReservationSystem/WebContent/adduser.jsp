<%@page import="repository.JSTLFlightDAO"%>  
<jsp:useBean id="f" class="uEntities.JSTLFlight"></jsp:useBean>  
<jsp:setProperty property="*" name="f"/>  

  
<%  
 int i=JSTLFlightDAO.save(f); 
if(i>0){  
response.sendRedirect("adduser-success.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  