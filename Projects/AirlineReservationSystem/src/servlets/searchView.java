package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import repository.JSTLFlightDAO;
import uEntities.JSTLFlight;
import uEntities.Users;

/**
 * Servlet implementation class searchView
 */
public class searchView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();
        
        System.out.println("inside search view");
        String from1=request.getParameter("From_Location");  
        String to1=request.getParameter("To_Location");
        
        JSTLFlight e=new JSTLFlight();  
        e.setFrom(from1);  
        e.setTo(to1);
        
    
        out.println("<h1>Flight List</h1>");  
          
        List<JSTLFlight> list = null;
		list = JSTLFlightDAO.getAllRecord(e);  
          
        out.print("<table border='1' width='100%'");  
        out.print("<tr><th>FlightId</th><th>AirlineId</th><th>AirlineName</th><th>From</th><th>To</th><th>Departure</th><th>Arrival</th><th>Price</th></tr>");  
        for(JSTLFlight e1:list){  
         out.print("<tr><td>"+e1.getFlightId()+"</td><td>"+e1.getAirlineId()+"</td><td>"+e1.getAirlineName()+
        		 "</td><td>"+e1.getFrom()+"</td><td>"+e1.getTo()+"</td><td>"+e1.getDeparture()+"</td><td>"+e1.getArrival()+"</td><td>"+e1.getPrice()+"</td></tr>");  
        }  
        out.print("</table>");  
        out.println("<a href='BookFlight.html'>Add New Employee</a>"); 
          
        out.close();  
		
	}

}
