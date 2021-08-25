<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>   
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<link href='https://fonts.googleapis.com/css?family=Antonio' rel='stylesheet'>
<style>
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
a
{
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

</style>

</head>
<body>
<div class="header">
<h1>Department of Police</h1>
</div>
<form class="box">
<h1>Registration</h1>
<div>
<label for="UserName" class="label">Username</label>
<input type="text" name="UserName">
 </div>
 
 <div>
 <label for="PASSWORD" class="label">Password</label>
 <input type="password" name="PASSWORD">
 </div>

<label for="isADMIN" class="label">Admin</label>
<div class="radio-toolbar">
<input type="radio" name="isADMIN" id="yes" value="1"/>
<label for="yes">Yes</label>
<input type="radio" name="isADMIN" id="no" value="0"/>
<label for="no">No</label>
</div>
<input type="submit" value="Register">
<a href="Login.jsp">Login</a>
</form>
<%
	Connection connection = null;
 	try {
     	
	  	Class.forName("com.mysql.cj.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://crms.cbfyiihpzzxe.ap-south-1.rds.amazonaws.com:3306/CRMS_DB","admin","crms1234");

      	String username = request.getParameter("UserName");
        String password = request.getParameter("PASSWORD");
        String IsAdmin = request.getParameter("isADMIN");
      	
      
        /* String sql = "select * from criminal_record where id = ?";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(sql);
        if(rs.next()){
         response.sendRedirect("criminal_profile.jsp?msg1=Profile_Already_Exists");   
        }
        else{  */
        PreparedStatement ps = connection.prepareStatement("insert into UserDetails(UserName,PASSWORD,isADMIN) values(?,?,?)");
        ps.setString(1,username);    
        ps.setString(2,password);
        ps.setString(3,IsAdmin);      
        ps.executeUpdate();

 	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
	
</body>

</html>