<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@include file="home.jsp" %>
<%
		Class.forName("com.mysql.cj.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://crms.cbfyiihpzzxe.ap-south-1.rds.amazonaws.com:3306/CRMS_DB","admin","crms1234");
		if(request.getParameter("delete")!=null)
		{
			int id =Integer.parseInt(request.getParameter("delete"));
			PreparedStatement pst=null;
			pst=con.prepareStatement("delete from criminal_record where id=?");
			pst.setInt(1,id);
			pst.executeUpdate();
			
		}
		



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>criminal profile view</title>
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
<table BORDER="1">
     <tr>
     <th>ID</th>
    
     <th>Full Name</th>
     <th>Aliases</th>
     <th>Class</th>
     <th>Number</th>
     <th>Crime</th>
     <th>Place of Arrest</th>
     <th>Date of Arrest</th>
     <th>Arresting Officer Name</th>
     <th>Precinct No.</th>
     <th>Sex</th>
     <th>Age</th>
     
     <th>Date of Birth</th>
     <th>Place Of Birth</th>
     <th>Height</th>
     <th>Weight</th>
     <th>Eye Color</th>
     <th>Hair Color</th>
     
     <th>Nationality</th>
     <th>Citizen</th>
     <th>Known Gang Affil.</th>
     <th>Date of Registration</th>
     <th>Residence</th>
     <th>Occupation</th>
     <th>Mutation</th>
     <th>Previous Crime Date</th>
     <th>Previous Crime City</th>
     <th>Previous Crime Description </th>
     <th>Build Type</th>
     <th>Scars and Marks</th>
      <th>City</th>
     <th>State</th>
     <th>Division</th>
     <th>View</th>
     <th>Edit</th>
     <th>Delete</th>
     </tr>
<% 
	
	  		Class.forName("com.mysql.cj.jdbc.Driver");	
			Connection connection = DriverManager.getConnection("jdbc:mysql://crms.cbfyiihpzzxe.ap-south-1.rds.amazonaws.com:3306/CRMS_DB","admin","crms1234");
			String sql= "select * from criminal_record";
			PreparedStatement preparedStatement = connection.prepareStatement(sql); 
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();
	         while(rs.next()){ 
	        	 int id=rs.getInt(1);
	        	 
	        	 /* String city = rs.getString("city");
	             String state = rs.getString("state");
	             String division = rs.getString("division");
	           	 String full_name = rs.getString("full_name");
	     		 String aliases = rs.getString("aliases");
	             String cl = rs.getString("class");
	             String number =rs.getString("number");
	             String crime = rs.getString("crime");
	             String poa = rs.getString("poa");
	             String doa = rs.getString("doa");
	     		 String aon = rs.getString("aon");
	             String precint_no = rs.getString("precint_no");
	             String sex = rs.getString("sex");
	             String age = rs.getString("age");
	             String dob = rs.getString("dob");
	             String bp = rs.getString("bp");
	     		 String height = rs.getString("height");
	             String weight = rs.getString("weight");
	             String eye_color = rs.getString("eye_color");
	             String hair_color = rs.getString("hair_color");
	             String build_type = rs.getString("build_type");
	             String scars = rs.getString("scars_marks");
	             String nationality = rs.getString("nationality");
	             String citizen =rs.getString("citizen");
	             String kga = rs.getString("kga");
	             String dor = rs.getString("dor");
	             String residence =rs.getString("residence");
	             String occupation = rs.getString("occupation");
	             String mutation = rs.getString("mutation");
	             String pch_date = rs.getString("pch_date");
	             String pch_city = rs.getString("pch_city");
	             String pch_charge = rs.getString("pch_charge"); */	
	             
	           	 String full_name = rs.getString(2);
	     		 String aliases = rs.getString(3);
	             String cl = rs.getString(4);
	             String number =rs.getString(5);
	             String crime = rs.getString(6);
	             String poa = rs.getString(7);
	             String doa = rs.getString(8);
	     		 String aon = rs.getString(9);
	             String precint_no = rs.getString(10);
	             String sex = rs.getString(11);
	             String age = rs.getString(12);
	             String dob = rs.getString(13);
	             String bp = rs.getString(14);
	     		 String height = rs.getString(15);
	             String weight = rs.getString(16);
	             String eye_color = rs.getString(17);
	             String hair_color = rs.getString(18);
	           
	             String nationality = rs.getString(19);
	             String citizen =rs.getString(20);
	             String kga = rs.getString(21);
	             String dor = rs.getString(22);
	             String residence =rs.getString(23);
	             String occupation = rs.getString(24);
	             String mutation = rs.getString(25);
	             String pch_date = rs.getString(26);
	             String pch_city = rs.getString(27);
	             String pch_charge = rs.getString(28);
	             String build_type = rs.getString(29);
	             String scars = rs.getString(30);
	             String city = rs.getString(31);
	             String state = rs.getString(32);
	             String division = rs.getString(33);
	             /* System.out.print(id); */
      %>
      <tr>
       <td> <%=id%></td>
       
       <td> <%=full_name%></td>
       <td> <%=aliases%></td>
       <td> <%=cl%></td>
       <td> <%=number%></td>
       <td> <%=crime%></td>
       <td> <%=poa%></td>
       <td> <%=doa%></td>
       <td> <%=aon%></td>
       <td> <%=precint_no%></td>
       <td> <%=sex%></td>
       <td> <%=age%></td>
       <td> <%=dob%></td>
       <td> <%=bp%></td>
       <td> <%=height%></td>
       <td> <%=weight%></td>
       <td> <%=eye_color%></td>
       <td> <%=hair_color%></td>
       
       <td> <%=nationality%></td>
       <td> <%=citizen%></td>
       <td> <%=kga%></td>
       <td> <%=dor%></td>
       <td> <%=residence%></td>
       <td> <%=occupation%></td>
       <td> <%=mutation%></td>
       <td> <%=pch_date%></td>
       <td> <%=pch_city%></td>
       <td> <%=pch_charge%></td>
       <td> <%=build_type%></td>
       <td> <%=scars%></td>
       <td> <%=city%></td>
       <td> <%=state%></td>
       <td> <%=division%></td>
       <td><a href="criminal_profile_view1.jsp?view=<%=rs.getInt(1)%>">View</a></td>
        <td><a href="criminal_profile_updact.jsp?edit=<%=rs.getInt(1)%>">Edit</a></td>
         <td><a href="?delete=<%=rs.getInt(1)%>">Delete</a></td>
       
      <% } %>
      
      </table>
</body>
</html>