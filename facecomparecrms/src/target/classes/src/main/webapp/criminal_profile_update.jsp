<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="home.jsp" %>
    <%@ page import="java.util.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@page import="java.sql.*"%>
    <%@ page session="true" %>  
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input[type='submit']{
  
    color: black;
    border: none;
    font-size: 20px;
    padding: 10px 35px;
    margin: 10px 0 8px 0;
    border-radius: 50px;
    outline: none;
    font-family: 'Playfair Display', serif;
}
input[type='submit']:hover{
    box-shadow: 0 0 15px white;
    background-color:  #F8F8FF;
}</style>
</head>
<body>

    
    
        
        <%
        	Connection connection = null;
    
    	  	Class.forName("com.mysql.cj.jdbc.Driver");	
    		connection = DriverManager.getConnection("jdbc:mysql://crms.cbfyiihpzzxe.ap-south-1.rds.amazonaws.com:3306/CRMS_DB","admin","crms1234");
    		
    			int id=Integer.parseInt(request.getParameter("edit"));
    			 String city = request.getParameter("city");
    	            String state =request.getParameter("state");
    	            String division = request.getParameter("division");
    	          	 String full_name =request.getParameter("full_name");
    	    		 String aliases =request.getParameter("aliases");
    	            String cl = request.getParameter("class");
    	            String number =request.getParameter("number");
    	            String crime = request.getParameter("crime");
    	            String poa = request.getParameter("poa");
    	    		 String aon = request.getParameter("aon");
    	    		 String doa=request.getParameter("doa");
    	            String precint_no =request.getParameter("precint_no"); 
    	            String sex = request.getParameter("sex");
    	            String age = request.getParameter("age");
    	            String dob = request.getParameter("dob");
    	            String bp = request.getParameter("bp");
    	    		 String height = request.getParameter("height");
    	            String weight = request.getParameter("weight");
    	            String eye_color = request.getParameter("eye_color");
    	            String hair_color =request.getParameter("hair_color");
    	            String build_type = request.getParameter("build_type");
    	            String scars = request.getParameter("scars_marks");
    	            String nationality =request.getParameter("nationality"); 
    	            String citizen =request.getParameter("citizen");
    	            String kga = request.getParameter("kga");
    	            String dor = request.getParameter("dor");
    	            String residence =request.getParameter("residence");
    	            String occupation = request.getParameter("occupation");
    	            String mutation = request.getParameter("mutation");
    	            String pch_date = request.getParameter("pch_date");
    	            String pch_city = request.getParameter("pch_city");
    	            String pch_charge = request.getParameter("pch_charge"); 
    		
        
        %>

<center>
<lj-cut text="Record of Arrest">
<table width="750" cellpadding="2" style="border-style:outset; border-width:2px; border-color:#F5F5F5" cellspacing="3">
<form action="criminal_profile_updact.jsp" method='post'>
<tr><td>
<table cellpadding="2" cellspacing="2" border="0"><tr><td colspan="2" valign="top">
<center><font size="3" face="arial"><center><b>DEPARTMENT OF POLICE,</b> <input type="text" name="city"  value="<%=city%>">, <input type="text" name="state"  value="<%=state%>"></font>
<font size="2" face="arial"><input type="text" name="division" id="name"  value="<%=division%>"> - Record of Arrest</font><br><br></td></center>
<td width="150" rowspan="7" style="border-style:solid; border-width:1px; border-color:#CCCCCC">
</td></tr>

<tr><td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">NAME</font> 
<font size="2" face="courier new"><input type="text" name="full_name" id="name"  value="<%=full_name%>"></font></td></tr>
<tr><td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">ALIASES</font> 
<font size="2" face="courier new"><input type="text" name="aliases" id="name"  value="<%=aliases%>"></font></td></tr>

<tr><td width="350" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">CLASS</font>
 <font size="2" face="courier new"><input type="text" name="class" id="name"  value="<%=cl%>"></font></td>
<td width="250" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">NUMBER</font> 
<font size="2" face="courier new"><input type="text" name="number" id="name" value="<%=number%>"></font></td></tr>

<tr><td style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">CRIME</font> 
<font size="2" face="courier new"><input type="text" name="crime" id="name"  value="<%=crime%>"></font>
</td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">DATE OF ARREST</font> 
<font size="2" face="courier new"><input type="text" name="doa" id="name"  value="<%=doa%>"></font>
</td></tr>

<tr><td style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">PLACE OF ARREST</font> 
<font size="2" face="courier new"><input type="text" name="poa" id="name"  value="<%=poa%>"></font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
</td>
</tr>

<tr><td style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">ARRESTING OFFICER</font> 
<font size="2" face="courier new"><input type="text" name="aon" id="name"  value="<%=aon%>"></font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">PRECINCT</font>
<font size="2" face="courier new"><input type="text" name="precint_no" id="name"  value="<%=precint_no%>">
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
<font size="2" face="courier new"><input type="text" name="sex" id="name"  value="<%=sex%>">
</font>
</td>
<td width="165" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">AGE</font> 
<font size="2" face="courier new"><input type="number" name="age" id="name"  value="<%=age%>">
</font>
</td>
<td width="170" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">BIRTHDATE</font> 
<font size="2" face="courier new"><input type="text" name="dob" id="name"  value="<%=dob%>">
</font>
</td>
<td width="240" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">BIRTHPLACE</font> 
<font size="2" face="courier new"><input type="text" name="bp" id="name"  value="<%=bp%>">
</font>
</td>
</tr>

<tr>
<td style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">HEIGHT</font> 
<font size="2" face="courier new"><input type="text" name="height" id="name"  value="<%=height%>">
</font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">WEIGHT</font> 
<font size="2" face="courier new"><input type="text" name="weight" id="name"  value="<%=weight%>">
</font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">EYE COLOR</font> 
<font size="2" face="courier new"><input type="text" name="eye_color" id="name"  value="<%=eye_color%>">
</font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">HAIR COLOR</font> 
<font size="2" face="courier new"><input type="text" name="hair_color" id="name"  value="<%=hair_color%>">
</font></td></tr>

<tr>
<td style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">BUILD</font> 
<font size="2" face="courier new"><input type="text" name="build_type" id="name"  value="<%=build_type%>">
</font></td>
<td colspan="3" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">SCARS AND MARKS</font> 
<font size="2" face="courier new"><input type="text" name="scars_marks" id="name"  value="<%=scars%>">
</font>
</td>
</tr>
<tr>
<td style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">NATIONALITY</font>
 <font size="2" face="courier new"><input type="text" name="nationality" id="name" value="<%=nationality%>">
 </font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">CITIZEN</font> 
<font size="2" face="courier new"><input type="text" name="citizen" id="name"  value="<%=citizen%>">
</font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">KNOWN GANG AFFIL.</font>
 <font size="2" face="courier new"><input type="text" name="kga" id="name"  value="<%=kga%>">
 </font></td>
<td style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">DATE OF REGISTRATION</font>
 <font size="2" face="courier new"><input type="text" name="dor" id="name"  value="<%=dor%>">
 </font>
 </td>
 </tr>

<tr>
<td colspan="2" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">RESIDENCE</font> 
<font size="2" face="courier new"><input type="text" name="residence" id="name"  value="<%=residence%>">
</font></td>
<td colspan="2" style="border-style:none none solid solid; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">OCCUPATION</font> 
<font size="2" face="courier new"><input type="text" name="occupation" id="name"  value="<%=occupation%>">
</font>
</td>
</tr>

<tr><td colspan="4" style="border-style:none none solid none; border-width:1px; border-color:#CCCCCC">
<font size="1" face="arial narrow" color="gray">MUTATION</font>
 <font size="2" face="courier new"><input type="text" name="mutation" id="name"  value="<%=mutation%>"></font>
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
<center><font size="2" face="courier new"><input type="text" name="pch_date" id="tabledata"  value="<%=pch_date%>">
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
<tr>
<td>
<input type=submit name="submit" value="Update">
</td>
</tr>
<input type=hidden name="name" value="<%=id%>">
</form>
</table>
</lj-cut>
</center>


</body>
</html>