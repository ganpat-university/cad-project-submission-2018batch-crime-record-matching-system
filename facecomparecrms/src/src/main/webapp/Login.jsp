<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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

  background:#191919;

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
.header{

 margin-top: 7px;
  text-align: center;
  font-family: 'Antonio';
  
}



</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="header">
<h1>Department of Police</h1>
</div>
	<form method="post" action="loginprocess.jsp" class="box" >
					
					<h1>Login</h1>
					  <div>
					<label for="username" class="label">Username</label>
					<input type="text" name="username"  placeholder=" "  required/>
					  </div>
 					 <div>			
					<label for="userpass" class="label">Password</label>
					<input type="password" name="userpass" placeholder=" " required/>
					</div>
					<div>
					<input type="submit"  value="Sign in"/> 
					
					<a href="Registration.jsp">Register</a>
					</div>
                    </form>
                    
                   

  

</body>
</html>
