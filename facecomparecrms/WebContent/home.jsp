<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
            <li><a href="Uploadimg.jsp">Compare Image</a></li>
            
            
        </ul>
   
    </div>
    
    
    <div class="fp">
    
    
    
    
    </div>


<%-- <%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","Adarsh@1234");
String username =request.getParameter("username");
String password1 =request.getParameter("userpass");
String sql1 = "select password from userdatails where Username= '" + username + "';";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql1);
if(rs.next()){
	String p = rs.getString("password");
	if(password1.equals(p)){
		String succ="Successfully Logged in";
		session.setAttribute("sessname",username);
		ServletContext sc = request.getServletContext();
		sc.getRequestDispatcher("/home.jsp").forward(request,response);	
	}
	else{
		String succ="Wrong Password";
		ServletContext sc = request.getServletContext();
		sc.getRequestDispatcher("/Login.jsp").forward(request,response);
		System.out.println("2");
	}
}
else{
	String succ="Wrong Username";
	ServletContext sc = request.getServletContext();
	sc.getRequestDispatcher("/Login.jsp").forward(request,response);
	System.out.println("3");
}
%> --%>
</body>
</html>