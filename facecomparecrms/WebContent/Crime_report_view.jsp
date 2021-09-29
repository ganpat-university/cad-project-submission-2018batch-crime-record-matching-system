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
     <tr>
     <th>date</th>
     <th>reporting_officer</th>
     <th>prepared_by</th>
     <th>incident</th>
     <th>detail_of_event</th>
     <th>action_taken</th>
     <th>summary</th>
     </tr>
<% 
	  		Class.forName("com.mysql.cj.jdbc.Driver");	
			Connection connection = DriverManager.getConnection("jdbc:mysql://database-1.chrpye2mmvea.us-east-1.rds.amazonaws.com:3306/sys","admin","crms1234");
			String sql= "select * from crimereport";
			PreparedStatement preparedStatement = connection.prepareStatement(sql); 
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();
	         while(rs.next()){
	             
	           	 String date = rs.getString(2);
	     		 String ro = rs.getString(3);
	             String p = rs.getString(4);
	             String i =rs.getString(5);
	             String d = rs.getString(6);
	             String a = rs.getString(7);
	             String s = rs.getString(8);
	             /* System.out.print(id); */
      %>
      <tr>
       
       <td> <%=date%></td>
       <td> <%=ro%></td>
       <td> <%=p%></td>
       <td> <%=i%></td>
       <td> <%=d%></td>
       <td> <%=a%></td>
       <td> <%=s%></td>
       
       <td><a href="Crime_report_view1.jsp?view=<%=rs.getInt(1)%>">View</a></td>
        <td><a href="Criminal_report_update?view=<%=rs.getInt(1)%>">Edit</a></td>
         <td><a href="Crime_report_delete?view=<%=rs.getInt(1)%>">Delete</a></td>
       </tr>
      <% } %>
      
      </table>
</body>
</html>