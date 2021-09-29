<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>   
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@include file="home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crime Report Form</title>
<link rel="stylesheet" href="style.css">
<link href='https://fonts.googleapis.com/css?family=Antonio' rel='stylesheet'>
<!-- <style>
body{

  margin: 0;

  padding: 0;

  font-family: sans-serif;

  background: #eceffc;

}

.box{

  width: 300px;

  padding: 40px;

  position: absolute;

  top: 50%;

  left: 50%;

  transform: translate(-50%,-50%);

  background:#2D2F36;

  text-align:center;

}

.box h1{

  color: white;

 font-family: 'Antonio';
 font-size:45px;
  font-weight: 500;


}

.box input[type = "text"],.box input[type = "password"]{

border:0;

  background: none;

  display: block;

  margin: 20px auto;

  text-align: center;

  border: 2px solid #C0C0C0;

  padding: 14px 10px;

  width: 200px;

  outline: none;

  color: white;

  border-radius: 24px;

  transition: 0.25s;

}

.box input[type = "text"]:focus,.box input[type = "password"]:focus{

  width: 280px;

  border-color: #F8F8FF;

}
.box input[type = "submit"]{

  border:0;

  background: none;

  display: block;

  margin: 20px auto;

  text-align: center;

  border: 2px solid #C0C0C0;

  padding: 14px 40px;

  outline: none;

  color: white;

  border-radius: 24px;

  transition: 0.25s;

  cursor: pointer;

}

.box input[type = "submit"]:hover{

  background: #F8F8FF;

}

.label{
color:  #c2c2c5;
display: block;
  font-size: 14px;
  height: 16px;
  margin-top: 20px;
  margin-bottom: 5px;
}

.radio-toolbar label{
 	display: inline-block;
   color:  #c2c2c5;
    padding: 10px 20px;
    font-family: sans-serif, Arial;
    font-size: 12px;

}

.header{

 margin-top: 7px;
  text-align: center;
  font-family: 'Antonio';
  
}


</style> -->

</head>
<body>

<div class="header">
<h1>Department of Police</h1>
</div>
<div class="container">
<form>
<h1>Crime Report</h1>
<div class="row">
<div class="col-1">
<label for="date" class="label">Date:</label>
<input type="text" name="date">
</div>
 
 
 <div class="col-2">
 <label for="PASSWORD" class="label">Reporting Officer:</label>
 <input type="text" name="reporting_officer">
 </div>
 </div>
 <div class="row">
 <div class="col-1">
 <label for="PASSWORD" class="label">Prepared By:</label>
 <input type="text" name="prepared_by">
 </div>
<div class="col-2">

  <label for="PASSWORD" class="label">Incident:</label>
 <input type="text" name="incident">
 </div>
 </div>
 <div class="row">
 <div class="col-full">
  <label for="PASSWORD" class="label">Detail Of Event:</label>
 <input type="text" name="detail_of_event">
 </div>
 </div>
<div class="row">
 <div class="col-full">
  <label for="PASSWORD" class="label">Action Taken:</label>
 <input type="text" name="action_taken">
 </div>
 </div>
<div class="row">
 <div class="col-full">
  <label for="PASSWORD" class="label">Summary:</label>
 <input type="text" name="summary">
 </div> 
 </div>
<input type="submit" value="Add Crime">
</form>
</div>
<%
	Connection connection = null;
 	try {
     	
	  	Class.forName("com.mysql.cj.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://crms.cbfyiihpzzxe.ap-south-1.rds.amazonaws.com:3306/CRMS_DB","admin","crms1234");
		String date = request.getParameter("date");
        String reporting_officer = request.getParameter("reporting_officer");
        String prepared_by = request.getParameter("prepared_by");
        String incident = request.getParameter("incident");
        String detail_of_event = request.getParameter("detail_of_event");
        String action_taken = request.getParameter("action_taken");
        String summary = request.getParameter("summary");
        System.out.println(date);
        /* String sql = "select * from criminal_record where id = ?";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(sql);
        if(rs.next()){
         response.sendRedirect("criminal_profile.jsp?msg1=Profile_Already_Exists");   
        }
        else{  */
        PreparedStatement ps = connection.prepareStatement("insert into crimereport(date,reporting_officer,prepared_by,incident,detail_of_event,action_taken,summary) values(?,?,?,?,?,?,?);");
        ps.setString(1,date);    
        ps.setString(2,reporting_officer);
        ps.setString(3,prepared_by);
        ps.setString(4,incident);
        ps.setString(5,detail_of_event);
        ps.setString(6,action_taken);
        ps.setString(7,summary);
        ps.executeUpdate();

 	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
	
</body>

</html>