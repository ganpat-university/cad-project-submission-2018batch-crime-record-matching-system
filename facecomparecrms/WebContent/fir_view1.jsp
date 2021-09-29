<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="home.jsp" %>
    <%@page import="java.sql.*"%>
    <%@ page session="true" %> 
    
    
    <%
    
    	  	Class.forName("com.mysql.cj.jdbc.Driver");	
    	  	Connection connection = DriverManager.getConnection("jdbc:mysql://database-1.chrpye2mmvea.us-east-1.rds.amazonaws.com:3306/sys","admin","crms1234");    		if(request.getParameter("view")!=null)
    		{
    			int id=Integer.parseInt(request.getParameter("view"));
    			String acc_name=null;
    			String com_name=null;
    			String city=null;
    			String com=null;
    			String contact_no=null;
    			String pre_no=null;
    			
    		
    			String sql= "select * from FIR_Record where FIR_NO =?";
        		PreparedStatement preparedStatement = connection.prepareStatement(sql); 
                    preparedStatement.setInt(1, id);
                    System.out.println(preparedStatement);
                    // Step 3: Execute the query or update query
                    ResultSet rs = preparedStatement.executeQuery();
                    
                    if(rs.next()){
                    	
                    	id=rs.getInt(1);
                    	acc_name=rs.getString("Accused_name");
                    	com_name=rs.getString("complaint_name");
                    	city=rs.getString("city");
                    	com=rs.getString("complain");
                    	contact_no=rs.getString("contact_no");
                    	pre_no=rs.getString("precint_no");
                    	System.out.print(id);
                  %>
                  
                  
<center>
<lj-cut text="FIR">
<table width="750" cellpadding="2" style="border-style:outset; border-width:2px; border-color:#F5F5F5" cellspacing="3">
<tr><td>
<table cellpadding="2" cellspacing="2" border="0"><tr><td colspan="2" valign="top">
<center><font size="3" face="arial"><center><b>DEPARTMENT OF POLICE</b>
<font size="2" face="arial">FIR</font><br><br></td></center>
<td width="150" rowspan="7" style="border-style:solid; border-width:1px; border-color:#CCCCCC">
</td></tr>

<tr><td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">FIR Number</font> 
<font size="2" face="courier new"><input type="text" name="FIR_NO" id="name" readonly="" value="<%=id%>"></font></td></tr>
<tr><td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">Accused Name</font> 
<font size="2" face="courier new"><input type="text" name="Accused_name" id="name" readonly="" value="<%=acc_name%>"></font></td></tr>

<tr><td width="350" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">Complainant Name</font>
 <font size="2" face="courier new"><input type="text" name="complaint_name" id="name" readonly="" value="<%=com_name%>"></font></td>
</table>
</td>
</tr>  

<tr><td>
<table cellpadding="2" cellspacing="2" border="0">
<tr>
<td width="175" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">City</font> 
<font size="2" face="courier new"><input type="text" name="city" id="name" readonly="" value="<%=city%>">
</font>
</td>
<td width="165" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">Precinct Number</font> 
<font size="2" face="courier new"><input type="number" name="precint_no" id="name" readonly="" value="<%=pre_no%>">
</font>
</td>
<td width="170" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">Contact No.</font> 
<font size="2" face="courier new"><input type="text" name="contact_no" id="name" readonly="" value="<%=contact_no%>">
</font>
</td>
</tr>
</table>
<tr><td>
<table cellpadding="2" cellspacing="2" border="0"><tr><td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">                
    <font size="1" face="arial narrow" color="gray">Complaint</font> 
<font size="2" face="courier new"><input type="text" name="complain" id="name" readonly="" value="<%=com%>"></font></td></tr>
</table>
</td>
</tr>

</table>
</td>
</tr>
</table>
</lj-cut>
</center>
<% }
    		}
  
    		%>	        
</body>
</html>