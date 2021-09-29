<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ page import="com.amazonaws.services.s3.AmazonS3ClientBuilder" %>
<%@ page import="com.amazonaws.services.s3.AmazonS3" %>
<%@ page import="com.amazonaws.services.s3.AmazonS3Client" %>
<%@ page import="java.io.File"%>
<%@ page import="java.util.List"%>
<%@ page import="facecomparecrms.*"%>
<%@ page import="com.amazonaws.services.rekognition.AmazonRekognition"%>
<%@ page import="com.amazonaws.services.rekognition.AmazonRekognitionClientBuilder"%>
<%@ page import="com.amazonaws.services.rekognition.model.AmazonRekognitionException"%>
<%@ page import="com.amazonaws.services.rekognition.model.CompareFacesMatch"%>
<%@ page import="com.amazonaws.services.rekognition.model.CompareFacesRequest"%>
<%@ page import="com.amazonaws.services.rekognition.model.CompareFacesResult"%>
<%@ page import="com.amazonaws.services.rekognition.model.Image"%>
<%@ page import="com.amazonaws.services.rekognition.model.S3Object"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
            <li><a href="Uploadimg.jsp">Compare Image</a></li>
            
            
        </ul>
   
    </div>
    
    
    <div class="fp">
    
    
    
    
    </div>
<form action='Uploadimgprocess.jsp'>
Enter File 1:<input type="file" name="file1">
<br>
Enter File 2:<input type="file" name="file2">
<br>
Enter File 1 name:<input type="text" name="file1a">
<br>
Enter File 2 name:<input type="text" name="file2a">
<br>
<input type="submit" name="submit" type='Submit'>
</form>
</body>
</html>