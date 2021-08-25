<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*"%>
<%@ page session="true" %>


    <%
	    Class.forName("com.mysql.cj.jdbc.Driver");	
		Connection connection = DriverManager.getConnection("jdbc:mysql://crms.cbfyiihpzzxe.ap-south-1.rds.amazonaws.com:3306/CRMS_DB","admin","crms1234");
	    if(request.getParameter("submit")!=null)
		{
			int id=Integer.parseInt(request.getParameter("submit"));
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
	        	PreparedStatement ps = connection.prepareStatement("update criminal_record set city='"+city+"',state='"+state+"',division='"+division+"',full_name='"+full_name+"',aliases='"+aliases+"',class='"+cl+"',number='"+number+"',crime='"+crime+"',poa='"+poa+"',aon='"+aon+"',doa='"+doa+"',precint_no='"+precint_no+"',sex='"+sex+"',age='"+age+"',dob='"+dob+"',bp='"+bp+"',height='"+height+"',weight='"+weight+"',eye_color='"+eye_color+"',hair_color='"+hair_color+"',build_type='"+build_type+"',scars_marks='"+scars+"',mationality='"+nationality+"',citizen='"+kga+"',dor='"+dor+"',residence='"+residence+"',occupation='"+occupation+"',mutation='"+mutation+"',pch_date='"+pch_date+"',pch_city='"+pch_city+"',pch_charge='"+pch_charge+"' where id = '"+id+"'");
	            ps.executeUpdate();

	            response.sendRedirect("criminal_profile_view.jsp?msg=success");
	            
	            }
	           
		
		
    
    
    	
   	


    %>

    
   
</body>
</html>