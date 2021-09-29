<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>   
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="javax.servlet.annotation.MultipartConfig" %>
<%@include file="home.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>criminal record Form</title>
<link rel="stylesheet" href="style.css">
<link href='https://fonts.googleapis.com/css?family=Antonio' rel='stylesheet'>

</head>
<body>
<div class="container">
<form>
<div class="row">
<div class="hcol-1">
<h1>Department of Police</h1>
<h2>Criminal-Record of Arrest</h2>
</div>
<div class="col-1">
 City<input type="text" name="city">
 </div>
 <div class="col-2">
 State<input type="text" name="state">
 </div>
</div>
<div class="row">
<div class="col-full">
<label for="division">
Division
</label>
 <input type="text" name="division" id="name">
</div>
</div>
<!--Arrest form start -->

<div class="row">
<div class="col-full">
<label for="full_name">
Name</label>
<input type="text" name="full_name" id="name">
</div>
</div>
<div class="row">
<div class="col-full">
<label for="aliases">
Alias</label>
<input type="text" name="aliases" id="name">
</div>
</div>
<div class="row">
<div class= "col-1">
<label for="class">
Class</label><input type="text" name="class" >

</div>
<div class = "col-2">
<label for="number">
Number</label><input type="number" name="number">
</div>
</div>
<div class="row">
<div class="col-1">
<label for="crime">
Crime</label><input type="text" name="crime">
</div>
<div class="col-2">
<label for="doa">
Date of Arrest</label><input type="text" name="doa">
</div>
</div>
<div class=row>
<div class=col-full>
<label for="poa">
Place of Arrest</label><input type="text" name="poa" id="name">
</div>
</div>
<div class="row">
<div class="col-1">
<label for="aon">
Arresting Officer</label><input type=text name="aon">
</div>
<div class="col-2">
<label for="precint_no">
Precinct</label><input type="number" name="precint_no">
</div>
</div>
<div class="row">
<div class="col-1">
<label for="sex">
Sex </label>
<input type="radio" name="sex" value="male"/>Male
<input type="radio" name="sex" value="female"/>Female
<input type="radio" name="sex" value="other"/>Other
</div>
<div class="col-2">
<label for="age">Age
</label>
<input type="number" name="age">
</div>
</div>
<div class="row">
<div class="col-1">
<label for="dob">Date Of Birth</label>
<input type="text" name="dob">
</div>
<div class="col-2">
<label for="bp">Place of Birth</label>
<input type="text" name="bp">
</div>
</div>
<div class="row">
<div class="col-1">
<label for="height">Height</label>
<input type="text" name="height">
</div>
<div class="col-2">
<label for="weight">Weight</label>
<input type="text" name="weight">
</div>
</div>
<div class="row">
<div class="col-1">
<label for="eye_color">Eye Color</label>
<input type="text" name="eye_color">
</div>
<div class="col-2">
<label for="hair_color">Hair Color</label>
<input type="text" name="hair_color">
</div>
</div>
<div class="row">
<div class="col-1">
<label for="build_type">Body Build Type</label>
<input type="text" name="build_type">
</div>
<div class="col-2">
<label for="scars_marks">Scars and Marks</label>
<input type="text" name="scars_marks">
</div>
</div>
<div class="row">
<div class="col-1">
<label for="nationality">Nationality</label>
<input type="text" name="nationality">
</div>
<div class="col-2">
<label for="citizen">Citizen</label>

<input type="radio" name="citizen" value="Yes"/>Yes
<input type="radio" name="citizen" value="No"/>No
</div>
</div>
<div class="row">
<div class="col-1">
<label for="kga">Known Gang Affil.</label>
 
<input type="text" name="kga">
</div>
<div class="col-2">
<label for="dor">Date of Registration</label>

<input type="text" name="dor">
</div>
</div>
<div class="row">
<div class="col-1">
<label for="residence">Residence</label>
<input type="text" name="residence">
</div>
<div class="col-2">
<label for="occupation">
Occupation
</label>
<input type="text" name="occupation">
</div>
</div>
<div class="row">
<div class="col-full">
<label for="mutation" >Mutation</label>
<input type="text" name="mutation" id="name">
</div>
</div>
<div class="row">
<div class="col-full">
<label for="image">Image</label>
<input type="file" name="image" id="name"/>
</div>
</div>

<!-- Previous criminal History -->
<div class="row">
<div class="hcol-2">
<h2>Previous Crime History</h2>

</div>
</div>


<table id="myTable">
<tr>
<th>Date</th>
<th>City</th>
<th>Description</th>
</tr>

  <tr>
    <td><input type="text" name="pch_date" id="tabledata"></td>
    <td><input type="text" name="pch_city" id="tabledata"></td>
    <td><input type="text" name="pch_charge" id="tabledata"></td>
  </tr>

</table>
<br>

<input type="button" value="Add Row" onClick="myCreateFunction()"/>  
<input type="submit" value="submit">
</form>
<script>
function myCreateFunction() {
	  var table = document.getElementById("myTable");
	  var row = table.insertRow(-1);
	  var cell1 = row.insertCell(0);
	  var cell2 = row.insertCell(1);
	  var cell3 = row.insertCell(2);
	  cell1.innerHTML = '<tr><td><input type="text" name="pch_date"></td></tr>';
	  cell2.innerHTML = '<tr><td><input type="text" name="pch_city"></td></tr>';
	  cell3.innerHTML = '<tr><td><input type="text" name="pch_charge"></td></tr>';}

	function myDeleteFunction() {
	  document.getElementById("myTable").deleteRow(0);
	}
		

	</script>
</div>

<%
 	try {
     	
	  	Class.forName("com.mysql.cj.jdbc.Driver");	
	  	Connection connection = DriverManager.getConnection("jdbc:mysql://database-1.chrpye2mmvea.us-east-1.rds.amazonaws.com:3306/sys","admin","crms1234");
      	String city = request.getParameter("city");
        String state = request.getParameter("state");
        String division = request.getParameter("division");
      	String full_name = request.getParameter("full_name");
		String aliases = request.getParameter("aliases");
        String cl = request.getParameter("class");
        String number = request.getParameter("number");
        String crime = request.getParameter("crime");
        String poa = request.getParameter("poa");
        String doa = request.getParameter("doa");
		String aon = request.getParameter("aon");
        String precint_no = request.getParameter("precint_no");
        String sex = request.getParameter("sex");
        String age = request.getParameter("age");
        String dob = request.getParameter("dob");
        String bp = request.getParameter("bp");
		String height = request.getParameter("height");
        String weight = request.getParameter("weight");
        String eye_color = request.getParameter("eye_color");
        String hair_color = request.getParameter("hair_color");
        String build_type = request.getParameter("build_type");
        String scars = request.getParameter("scars_marks");
        String nationality = request.getParameter("nationality");
        String citizen = request.getParameter("citizen");
        String kga = request.getParameter("kga");
        String dor = request.getParameter("dor");
        String residence = request.getParameter("residence");
        String occupation = request.getParameter("occupation");
        String mutation = request.getParameter("mutation");
        String pch_date = request.getParameter("pch_date");
        String pch_city = request.getParameter("pch_city");
        String pch_charge = request.getParameter("pch_charge");
        Part part = request.getPart("image");
      
        /* String sql = "select * from criminal_record where id = ?";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(sql);
        if(rs.next()){
         response.sendRedirect("criminal_profile.jsp?msg1=Profile_Already_Exists");   
        }
        else{  */
        PreparedStatement ps = connection.prepareStatement("insert into criminal_record(city,state,division,full_name,aliases,class,number,crime,poa,doa,aon,precint_no,sex,age,dob,bp,height,weight,eye_color,hair_color,build_type,scars_marks,nationality,citizen,kga,dor,residence,occupation,mutation,pch_date,pch_city,pch_charge,image) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        InputStream is = part.getInputStream();
        ps.setString(1,city);    
        ps.setString(2,state);
        ps.setString(3,division);
        ps.setString(4,full_name);
        ps.setString(5,aliases);
        ps.setString(6,cl);
        ps.setString(7,number);
        ps.setString(8,crime);
        ps.setString(9,poa);
        ps.setString(10,doa);
        ps.setString(11,aon);
        ps.setString(12,precint_no);    
        ps.setString(13,sex);
        ps.setString(14,age);
        ps.setString(15,dob);
        ps.setString(16,bp);
        ps.setString(17,height);
        ps.setString(18,weight);
        ps.setString(19,eye_color);
        ps.setString(20,hair_color);
        ps.setString(21,build_type);
        ps.setString(22,scars);
        ps.setString(23,nationality);
        ps.setString(24,citizen);
        ps.setString(25,kga);
        ps.setString(26,dor);
        ps.setString(27,residence);
        ps.setString(28,occupation);
        ps.setString(29,mutation);
        ps.setString(30,pch_date);
        ps.setString(31,pch_city);
        ps.setString(32,pch_charge);
        ps.setBlob(33, is);
        
        
        ps.executeUpdate();

 	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	
	
%>

</body>

</html>