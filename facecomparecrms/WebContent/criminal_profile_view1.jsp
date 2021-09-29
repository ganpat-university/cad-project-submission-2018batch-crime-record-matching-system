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
    			 String city = null;
    	            String state = null;
    	            String division = null;
    	          	 String full_name = null;
    	    		 String aliases =null;
    	            String cl = null;
    	            String number =null;
    	            String crime = null;
    	            String poa = null;
    	    		 String aon = null;
    	    		 String doa=null;
    	            String precint_no =null; 
    	            String sex = null;
    	            String age = null;
    	            String dob = null;
    	            String bp = null;
    	    		 String height = null;
    	            String weight = null;
    	            String eye_color = null;
    	            String hair_color =null;
    	            String build_type = null;
    	            String scars = null;
    	            String nationality =null; 
    	            String citizen =null;
    	            String kga = null;
    	            String dor = null;
    	            String residence =null;
    	            String occupation = null;
    	            String mutation = null;
    	            String pch_date = null;
    	            String pch_city = null;
    	            String pch_charge = null; 
    		
    		String sql= "select * from criminal_record where id =?";
    		PreparedStatement preparedStatement = connection.prepareStatement(sql); 
                preparedStatement.setInt(1, id);
                System.out.println(preparedStatement);
                // Step 3: Execute the query or update query
                ResultSet rs = preparedStatement.executeQuery();
	        
               
    		
	       	
	       if(rs.next()){
	    	   	id=rs.getInt(1);
	        	 city = rs.getString("city");
	             state = rs.getString("state");
	             division = rs.getString("division");
	           	 full_name = rs.getString("full_name");
	     		 aliases = rs.getString("aliases");
	              cl = rs.getString("class");
	             number =rs.getString("number");
	             crime = rs.getString("crime");
	             poa = rs.getString("poa");
	             doa = rs.getString("doa");
	     		 aon = rs.getString("aon");
	              precint_no = rs.getString("precint_no");
	             sex = rs.getString("sex");
	              age = rs.getString("age");
	              dob = rs.getString("dob");
	              bp = rs.getString("bp");
	     		  height = rs.getString("height");
	             weight = rs.getString("weight");
	              eye_color = rs.getString("eye_color");
	             hair_color = rs.getString("hair_color");
	              build_type = rs.getString("build_type");
	              scars = rs.getString("scars_marks");
	             nationality = rs.getString("nationality");
	              citizen =rs.getString("citizen");
	              kga = rs.getString("kga");
	              dor = rs.getString("dor");
	             residence =rs.getString("residence");
	              occupation = rs.getString("occupation");
	             mutation = rs.getString("mutation");
	              pch_date = rs.getString("pch_date");
	              pch_city = rs.getString("pch_city");
	              pch_charge = rs.getString("pch_charge");
	              System.out.print(id);

       			
        
        %>
<center>
<lj-cut text="Record of Arrest">
<table width="750" cellpadding="2" style="border-style:outset; border-width:2px; border-color:#F5F5F5" cellspacing="3">
<tr><td>
<table cellpadding="2" cellspacing="2" border="0"><tr><td colspan="2" valign="top">
<center><font size="3" face="arial"><center><b>DEPARTMENT OF POLICE,</b> <input type="text" name="city" readonly=" " value="<%=city%>">, <input type="text" name="state" readonly=" " value="<%=state%>"></font>
<font size="2" face="arial"><input type="text" name="division" id="name" readonly=" " value="<%=division%>"> - Record of Arrest</font><br><br></td></center>
<td width="150" rowspan="7" style="border-style:solid; border-width:1px; border-color:#CCCCCC">
</td></tr>

<tr><td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">NAME</font> 
<font size="2" face="courier new"><input type="text" name="full_name" id="name" readonly="" value="<%=full_name%>"></font></td></tr>
<tr><td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">ALIASES</font> 
<font size="2" face="courier new"><input type="text" name="aliases" id="name" readonly="" value="<%=aliases%>"></font></td></tr>

<tr><td width="350" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">CLASS</font>
 <font size="2" face="courier new"><input type="text" name="class" id="name" readonly="" value="<%=cl%>"></font></td>
<td width="250" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">NUMBER</font> 
<font size="2" face="courier new"><input type="text" name="number" id="name" readonly="" value="<%=number%>"></font></td></tr>

<tr><td style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">CRIME</font> 
<font size="2" face="courier new"><input type="text" name="crime" id="name" readonly="" value="<%=crime%>"></font>
</td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">DATE OF ARREST</font> 
<font size="2" face="courier new"><input type="text" name="doa" id="name" readonly="" value="<%=doa%>"></font>
</td></tr>

<tr><td style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">PLACE OF ARREST</font> 
<font size="2" face="courier new"><input type="text" name="poa" id="name" readonly="" value="<%=poa%>"></font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
</td>
</tr>

<tr><td style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">ARRESTING OFFICER</font> 
<font size="2" face="courier new"><input type="text" name="aon" id="name" readonly="" value="<%=aon%>"></font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">PRECINCT</font>
<font size="2" face="courier new"><input type="text" name="precint_no" id="name" readonly="" value="<%=precint_no%>">
</font>
</td>
</tr>
</table>
</td>
</tr>


<tr><td>
<table cellpadding="2" cellspacing="2" border="0">
<tr>
<td width="175" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">SEX</font> 
<font size="2" face="courier new"><input type="text" name="sex" id="name" readonly="" value="<%=sex%>">
</font>
</td>
<td width="165" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">AGE</font> 
<font size="2" face="courier new"><input type="number" name="age" id="name" readonly="" value="<%=age%>">
</font>
</td>
<td width="170" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">BIRTHDATE</font> 
<font size="2" face="courier new"><input type="text" name="dob" id="name" readonly="" value="<%=dob%>">
</font>
</td>
<td width="240" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">BIRTHPLACE</font> 
<font size="2" face="courier new"><input type="text" name="bp" id="name" readonly="" value="<%=bp%>">
</font>
</td>
</tr>

<tr>
<td style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">HEIGHT</font> 
<font size="2" face="courier new"><input type="text" name="height" id="name" readonly="" value="<%=height%>">
</font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">WEIGHT</font> 
<font size="2" face="courier new"><input type="text" name="weight" id="name" readonly="" value="<%=weight%>">
</font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">EYE COLOR</font> 
<font size="2" face="courier new"><input type="text" name="eye_color" id="name" readonly="" value="<%=eye_color%>">
</font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">HAIR COLOR</font> 
<font size="2" face="courier new"><input type="text" name="hair_color" id="name" readonly="" value="<%=hair_color%>">
</font></td></tr>

<tr>
<td style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">BUILD</font> 
<font size="2" face="courier new"><input type="text" name="build_type" id="name" readonly="" value="<%=build_type%>">
</font></td>
<td colspan="3" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">SCARS AND MARKS</font> 
<font size="2" face="courier new"><input type="text" name="scars_marks" id="name" readonly="" value="<%=scars%>">
</font>
</td>
</tr>
<tr>
<td style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">NATIONALITY</font>
 <font size="2" face="courier new"><input type="text" name="nationality" id="name" readonly="" value="<%=nationality%>">
 </font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">CITIZEN</font> 
<font size="2" face="courier new"><input type="text" name="citizen" id="name" readonly="" value="<%=citizen%>">
</font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">KNOWN GANG AFFIL.</font>
 <font size="2" face="courier new"><input type="text" name="kga" id="name" readonly="" value="<%=kga%>">
 </font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">DATE OF REGISTRATION</font>
 <font size="2" face="courier new"><input type="text" name="dor" id="name" readonly="" value="<%=dor%>">
 </font>
 </td>
 </tr>

<tr>
<td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">RESIDENCE</font> 
<font size="2" face="courier new"><input type="text" name="residence" id="name" readonly="" value="<%=residence%>">
</font></td>
<td colspan="2" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">OCCUPATION</font> 
<font size="2" face="courier new"><input type="text" name="occupation" id="name" readonly="" value="<%=occupation%>">
</font>
</td>
</tr>

<tr><td colspan="4" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">MUTATION</font>
 <font size="2" face="courier new"><input type="text" name="mutation" id="name" readonly="" value="<%=mutation%>"></font>
</td>
</tr>

<tr>
<td colspan="4" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="2" face="courier new"> </font>
</td>
</tr>
</table>
</td>
</tr>

<tr>
<td>
<table cellpadding="2" cellspacing="2" border="0">
<tr>
<td colspan="3" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<center>
<font size="2" face="arial" color="gray"><b>PREVIOUS CRIMINAL HISTORY</b></font>
</center>
</td>
</tr>

<tr>
<td width="150" style="border-style:none solid solid none; border-width:1px; border-color:#CCCCCC">
<center><font size="1" face="arial narrow" color="gray">DATE</font></center></td>
<td width="200" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<center><font size="1" face="arial narrow" color="gray">CITY</font></center></td>
<td width="400" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<center><font size="1" face="arial narrow" color="gray">CHARGE AND DISPOSITION</font></center></td></tr>

<tr><td width="150" style="border-style:none solid solid none; border-width:1px; border-color:#CCCCCC">
<center><font size="2" face="courier new"><input type="text" name="pch_date" id="tabledata" readonly="" value="<%=pch_date%>">
</font>
</center>
</td>
<td width="200" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<center><font size="2" face="courier new"><input type="text" name="pch_city" id="tabledata" readonly="" value="<%=pch_city%>">
</font>
</center>
</td>
<td width="400" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<center><font size="2" face="courier new"><input type="text" name="pch_charge" id="tabledata" readonly="" value="<%=pch_charge%>">
</font>
</center>
</td>
</tr>

</center>
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