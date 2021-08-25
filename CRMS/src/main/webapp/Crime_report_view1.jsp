<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@include file="home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>criminal profile view</title>
</head>
<body>


<table BORDER="1">
<% 
	
	  		Class.forName("com.mysql.cj.jdbc.Driver");	
			Connection connection = DriverManager.getConnection("jdbc:mysql://crms.cbfyiihpzzxe.ap-south-1.rds.amazonaws.com:3306/CRMS_DB","admin","crms1234");
			String date,reporting_officer,prepared_by,incident,detail_of_event,action_taken,summary;
			int id=Integer.parseInt(request.getParameter("view"));
			System.out.println(id);
			String sql= "select * from crimereport where case_id=?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql); 
			preparedStatement.setInt(1,id);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();
	        rs.next(); 
	        	 id=rs.getInt(1);	
	        	 String da = rs.getString(2);
	     		 String ro = rs.getString(3);
	             String p = rs.getString(4);
	             String i =rs.getString(5);
	             String d = rs.getString(6);
	             String a = rs.getString(7);
	             String s = rs.getString(8);
	             /* System.out.print(id); */
      %>
      <tr>	
    
     <td>date</td>
     <td> <%=da%></td>
   
     <td>reporting_officer</td>
     <td> <%=ro%></td>
    
     <td>prepared_by</td>
     <td> <%=p%></td>
     
     <td>incident</td>
      <td> <%=i%></td>
   
     <td>detail_of_event</td>
     <td> <%=d%></td>   
    
     <td>action_taken</td>
     <td> <%=a%></td>

     <td>summary</td>
     <td> <%=a%></td>  
     </tr>
      
      </table>
</body>
</html>