<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>   
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@include file="home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>

<p style="text-align:center;">
<h1>Register your FIR online</h1>
</p>
      <p style="text-align:center;">Online FIR Registration Form</p>

  



<div class="container">
  <form>
   <div class="row">
    <div class="col-full">
      <label for="FIR_no">FIR No.</label>
    </div>
    <div class="col-full">
      <input type="text" id="FIR_no" name="FIR_no" placeholder=" ">
    </div>
    </div>
  <div class="row">
    <div class="col-full">
      <label for="Accused_name">Accused Name</label>
    </div>
    <div class="col-full">
      <input type="text" id="Accused_name" name="Accused_name" placeholder=" ">
    </div>
  </div>
  <div class="row">
    <div class="col-full">
      <label for="complaint_name">Complainant Name</label>
    </div>
    <div class="col-full">
      <input type="text" id="complaint_name" name="complaint_name" placeholder=" ">
    </div>
  </div>
  <div class="row">
    <div class="col-full">
      <label for="city">city</label>
    </div>
    <div class="col-full">
    <input type="text" id="city" name="city" placeholder=" ">
      
    </div>
  </div>
  
   <div class="row">
    <div class="col-25">
      <label for="contact_no">Contact No.</label>
    </div>
    <div class="col-75">
    <input type="text" id="contact_no" name="contact_no" placeholder=" ">
    </div>
    </div>
  
  <div class="row">
    <div class="col-25">
      <label for="complain">Complaint</label>
    </div>
    <div class="col-75">
      <textarea id="complain" name="complain" placeholder=" " style="height:200px"></textarea>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="precint_no">Precinct No.</label>
    </div>
    <div class="col-75">
      <input type="text" id="precint_no" name="precint_no" placeholder=" ">
    </div>
  </div>
  <div class="row">
    <input type="submit" value="Submit" name="sample">
  </div>
  </form>
</div>

<%
 	try {
     	
	  	Class.forName("com.mysql.cj.jdbc.Driver");	
	  	Connection connection = DriverManager.getConnection("jdbc:mysql://database-1.chrpye2mmvea.us-east-1.rds.amazonaws.com:3306/sys","admin","crms1234");
	  	int Fir_no = Integer.parseInt(request.getParameter("FIR_no"));
		String Accused_name = request.getParameter("Accused_name");
        String complaint_name = request.getParameter("complaint_name");
        String city = request.getParameter("city");
        String contact_no = request.getParameter("contact_no");
        String complain = request.getParameter("complain");
        String precint_no = request.getParameter("precint_no");
        /* String sql = "select * from criminal_record where id = ?";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(sql);
        if(rs.next()){
         response.sendRedirect("criminal_profile.jsp?msg1=Profile_Already_Exists");   
        }
        else{  */
        
       PreparedStatement ps = connection.prepareStatement("insert into FIR_Record(FIR_no,Accused_name,complaint_name,city,contact_no,complain,precint_no) values(?,?,?,?,?,?,?);");
        ps.setInt(1,Fir_no);
        ps.setString(2,Accused_name);    
        ps.setString(3,complaint_name);
        ps.setString(4,city);
        ps.setString(5,contact_no);
        ps.setString(6,complain);
        ps.setString(7,precint_no);
        ps.executeUpdate();

 	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
</body>
</html>
