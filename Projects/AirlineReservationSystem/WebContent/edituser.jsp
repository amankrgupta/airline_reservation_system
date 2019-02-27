<%@page import="repository.JSTLFlightDAO"%>  
<jsp:useBean id="f" class="uEntities.JSTLFlight"></jsp:useBean>  
<jsp:setProperty property="*" name="f"/>  
<%  
int i=JSTLFlightDAO.update(f);  
response.sendRedirect("ViewFlightDetails1.jsp");  
%>  