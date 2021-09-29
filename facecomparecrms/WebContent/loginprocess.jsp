<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://database-1.chrpye2mmvea.us-east-1.rds.amazonaws.com:3306/sys","admin","crms1234");
String username =request.getParameter("username");
String password1 =request.getParameter("userpass");
String sql1 = "select password from UserDetails where Username= '" + username + "';";
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
%>
</body>
</html>