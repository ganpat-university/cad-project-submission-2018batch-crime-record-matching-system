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
      
<center>
<lj-cut text="Record of Arrest">
<table width="1500" cellpadding="2" style="border-style:outset; border-width:2px; border-color:#F5F5F5" cellspacing="3">
<tr><td>
<table cellpadding="2" cellspacing="2" border="0"><tr><td colspan="2" valign="top">
<center><font size="3" face="arial"><center><b>DEPARTMENT OF POLICE,</b></font>
<font size="2" face="arial">Investigation Report</font><br><br></td></center>
<td width="150" rowspan="7" style="border-style:solid; border-width:1px; border-color:#CCCCCC">
</td></tr>

<tr><td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">Date</font> 
<font size="2" face="courier new"><input type="text" name="date" id="name" readonly="" value="<%=da%>"></font></td></tr>
<tr><td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">Reporting officer</font> 
<font size="2" face="courier new"><input type="text" name="reporting_officer" id="name" readonly="" value="<%=ro%>"></font></td>
 <td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">Prepared By</font> 
<font size="2" face="courier new"><input type="text" name="prepared_by" id="name" readonly="" value="<%=p%>"></font></td></tr>
 <tr><td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">Incident</font> 
<font size="2" face="courier new"><input type="text" name="incident" id="name" readonly="" value="<%=i%>"></font></td>
<td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">Details of Event</font> 
<font size="2" face="courier new"><input type="text" name="detail_of_event" id="name" readonly="" value="<%=d%>"></font></td></tr>
 <tr><td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">Action Taken</font> 
<font size="2" face="courier new"><input type="text" name="action_taken" id="name" readonly="" value="<%=a%>"></font></td></tr>
 <tr><td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">Summary</font> 
<font size="2" face="courier new"><input type="text" name="summary" id="name" readonly="" value="<%=s%>"></font></td></tr>

</center>
</td>
</tr>

</table>
</td>
</tr>
</table>
</lj-cut>
</center>
</body>
</html>