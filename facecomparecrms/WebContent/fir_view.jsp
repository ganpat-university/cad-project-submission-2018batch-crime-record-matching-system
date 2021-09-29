<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@include file="home.jsp" %>
<%
		Class.forName("com.mysql.cj.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://database-1.chrpye2mmvea.us-east-1.rds.amazonaws.com:3306/sys","admin","crms1234");		if(request.getParameter("delete")!=null)
		{
			int fir_no =Integer.parseInt(request.getParameter("delete"));
			PreparedStatement pst=null;
			pst=con.prepareStatement("delete from FIR_Record where FIR_NO=?");
			pst.setInt(1,fir_no);
			pst.executeUpdate();
			
		}
		



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
	background-color:#D9CFCD;
	


}

header{
    font-family: 'Playfair Display', serif;
    font-weight: 900;
    font-size: 80px;
    text-transform: uppercase;
    display: inline;
    line-height: 72px;
    margin-bottom: 20px;
    padding-top:20px;

}
p{
    margin-top: 0;
    margin-bottom: 20px;
}
.head{
    text-align: center;
    position: relative;


}

.headerobjectswrapper{
}

/*.subhead{
    text-transform: uppercase;
    border-bottom: 2px solid #2f2f2f;
    border-top: 2px solid #2f2f2f;
    padding: 12px 0 12px 0;

}*/
.subhead ul{


list-style-type: none;
    margin: 0;
     padding: 30px;
  overflow: hidden;
  
   
    }
    .subhead ul li {
  float: left;
}
.subhead ul li a{
    display: block;
  color:black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 25px;
  background-color:#F6F2F1;

}
 .subhead li a:hover{
    background-color:white;
    box-shadow: 0 0 15px white;
    color: black;
    font-size: 25px;
    /*border: 1px solid #636;*/
}
.subhead li a.active{
    background-color:white;
    box-shadow: 0 0 15px white;
    color: black;
    font-size: 25px;
    /*border: 1px solid #636;*/
}
</style>
</head>
<body>
<table BORDER="1">
<tr>
<th>Fir No.</th>
<th>Accused Name</th>
<th>Complaint Name</th>
<th>City</th>
<th>Complain</th>
<th>Contact No.</th>
<th>Precinct No.</th>
</tr>

<% 
	
	  		Class.forName("com.mysql.cj.jdbc.Driver");	
			Connection connection = DriverManager.getConnection("jdbc:mysql://crms.cbfyiihpzzxe.ap-south-1.rds.amazonaws.com:3306/CRMS_DB","admin","crms1234");
			String sql= "select * from FIR_Record";
			PreparedStatement preparedStatement = connection.prepareStatement(sql); 
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();
	         while(rs.next()){ 
	        	 int fir_no=rs.getInt(1);
	        	 String acc_name= rs.getString(2);
	        	 String com_name= rs.getString(3);
	        	 String city= rs.getString(4);
	        	 String comp=rs.getString(5);
	        	 String cont=rs.getString(6);
	        	 String pr_no=rs.getString(7);
	        	 %>
<tr>
<td><%=fir_no%></td>
<td><%=acc_name%></td>
<td><%=com_name%></td>
<td><%=city%></td>
<td><%=comp%></td>
<td><%=cont%></td>
<td><%=pr_no%></td>
<td><a href="fir_view1.jsp?view=<%=rs.getInt(1)%>">View</a></td>
         <td><a href="?delete=<%=rs.getInt(1)%>">Delete</a></td>
</tr>
 <% } %>
</table>
</body>
</html>