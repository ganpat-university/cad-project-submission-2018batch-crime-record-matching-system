<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*"%>
<%@ page import="com.amazonaws.*" %>
<%@ page import="com.amazonaws.auth.*" %>
<%@ page import="com.amazonaws.auth.profile.*" %>
<%@ page import="com.amazonaws.services.ec2.*" %>
<%@ page import="com.amazonaws.services.ec2.model.*" %>
<%@ page import="com.amazonaws.services.s3.*" %>
<%@ page import="com.amazonaws.services.s3.model.*" %>
<%@ page import="com.amazonaws.services.dynamodbv2.*" %>
<%@ page import="com.amazonaws.services.dynamodbv2.model.*" %>



<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <title>Hello AWS Web World!</title>
    <link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic|Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
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
    <div class="head">
    <div class="headerobjectswrapper">
       </div>
        <header>Crime Record Matching System</header>
    </div>

    <div class="subhead"> 
    
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="FIRform_1.jsp">FIR</a></li>
            <li><a href="criminal_profile.jsp">Criminal's Profile</a></li>
            <li><a href="criminal_profile_view.jsp">View Criminals</a></li>
            <li><a href="Crime_report.jsp">Crime Reports</a></li>
            <li><a href="Crime_report_view.jsp">View Crime Reports</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="Registration.jsp">Register</a></li>
            
            
        </ul>
   
    </div>
    
    
    <div class="fp">
    
    
    
    
    </div>
</body>
</html>








  

