package repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import uEntities.JSTLFlight;



public class JSTLFlightDAO {

	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airlinesystem","root","smita");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(JSTLFlight f){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        System.out.println("enter in connection");
	        PreparedStatement ps=con.prepareStatement("INSERT INTO `addflight` (`airlineId`, `airlineName`, `from`, `to`, `departure`,`arrival`, `price`) VALUES (?,?,?,?,?,?,?)"); 
	        //INSERT INTO `addflight` (`flightId`,`airlineId`, `airlineName`, `from`, `to`, `departure`,`arrival`, `price`) VALUES (?,?,?,?,?,?,?,?);
	        ps.setInt(1,f.getAirlineId());  
	        ps.setString(2,f.getAirlineName());  
	        ps.setString(3,f.getFrom());  
	        ps.setString(4,f.getTo());  
	        ps.setString(5,f.getDeparture());  
	        ps.setString(6,f.getArrival());
	        ps.setInt(7,f.getPrice());
	        System.out.println("value save");
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(JSTLFlight f){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("update addflight set `airlineId`=?,`airlineName`=?,`from`=?,`to`=?,`departure`=?,`arrival`=?,`price`=? where `flightId`=?");  
	        ps.setInt(1,f.getAirlineId());  
	        ps.setString(2,f.getAirlineName());  
	        ps.setString(3,f.getFrom());  
	        ps.setString(4,f.getTo());  
	        ps.setString(5,f.getDeparture());  
	        ps.setString(6,f.getArrival());  
	        ps.setInt(7,f.getPrice()); 
	       ps.setInt(8,f.getFlightId()); 
	        
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(JSTLFlight f){  
		 int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("delete from addFlight where `flightId`=?");  
		        ps.setInt(1,f.getFlightId());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		  
		    return status;    
	}  
	public static List<JSTLFlight> getAllRecords(){  
	    List<JSTLFlight> list=new ArrayList<JSTLFlight>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from addflight");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	JSTLFlight f=new JSTLFlight();  
	            f.setFlightId(rs.getInt("flightId"));  
	            f.setAirlineId(rs.getInt("airlineId"));  
	            f.setAirlineName(rs.getString("airlineName"));  
	            f.setFrom(rs.getString("from"));  
	            f.setTo(rs.getString("to"));  
	            f.setDeparture(rs.getString("departure"));  
	            f.setArrival(rs.getString("arrival")); 
	            f.setPrice(rs.getInt("price")); 
	            list.add(f);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	
	public static List<JSTLFlight> getAllRecord(JSTLFlight f){  
	    List<JSTLFlight> list=new ArrayList<JSTLFlight>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from addflight where `from`=? and `to`=?");
	       
	        ps.setString(1,f.getFrom());  
	        ps.setString(2,f.getTo()); 
	       
	        ResultSet rs=ps.executeQuery(); 
	        
	        while(rs.next()){  
	        	//JSTLFlight f=new JSTLFlight();  
	            f.setFlightId(rs.getInt("flightId"));  
	            f.setAirlineId(rs.getInt("airlineId"));  
	            f.setAirlineName(rs.getString("airlineName"));  
	            f.setFrom(rs.getString("from"));  
	            f.setTo(rs.getString("to"));  
	            f.setDeparture(rs.getString("departure"));  
	            f.setArrival(rs.getString("arrival")); 
	            f.setPrice(rs.getInt("price")); 
	            list.add(f); 
	            
	        }  
	        for( JSTLFlight n:list)
	        {
	        	System.out.println(n.getAirlineId());
	        }
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	
	public static JSTLFlight getRecordById(int flightId){  
		JSTLFlight f=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from addflight where flightId=?");  
	        ps.setInt(1,flightId);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            f=new JSTLFlight();  
	           
	            f.setFlightId(rs.getInt("flightId"));  
	            f.setAirlineId(rs.getInt("airlineId"));  
	            f.setAirlineName(rs.getString("airlineName"));  
	            f.setFrom(rs.getString("from"));  
	            f.setTo(rs.getString("to"));  
	            f.setDeparture(rs.getString("departure"));  
	            f.setArrival(rs.getString("arrival")); 
	            f.setPrice(rs.getInt("price"));   
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return f;  
	}  
}
