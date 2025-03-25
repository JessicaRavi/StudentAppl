<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>login page for eclipse</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<style>
	
	body {
    background-image: url('https://i1.wp.com/azmind.com/demo/bootstrap-registration-forms/form-2/assets/img/backgrounds/2.jpg'); /* Change the path if needed */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    color: #E0F7FA; 
}
	

.one {
    width: 400px;
    height: auto; 
    min-height: 400px; 
    box-shadow: 0px 0px 10px black;
    margin: 100px auto; 
    padding: 20px;
    text-align: center;
    border-radius: 10px;
    background: rgba(0, 0, 0, 0.6); 
    overflow: hidden; 
}

		.two {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%;
}

.input-container {
    display: flex;
    align-items: center;
    width: 100%;
    margin-bottom: 15px;
}

.input-container i {
    margin-right: 10px;
    color: white;
}

.input-container input {
    width: 100%;
    padding: 10px;
    border: none;
    background: rgba(255, 255, 255, 0.8);
    border-radius: 5px;
}

h1 {
    margin: 0px;
    font-family: "Dancing Script", serif;
    font-optical-sizing: auto;
    font-weight: 400;
    font-style: normal;
    font-size: 80px;
    color: #E0F7FA; 
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6); 
}

h1
{
   text-align:center;
   
}

.container {
width :200px;
margin: 40px auto;		
  padding :30px;
  box-sizing: content-box;
  text-align:left;
  box-shadow:blue;
  box-shadow: 0px 0px 10px blue;
  border:none;
  border-radius:10px;
 
}



.login-btn {
  color:whitesmoke;
  display: block;
  width: 90%;
  border: none;
  border-radius: 20px;
  background-color: Darkred;
  padding: 15px 28px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;

}

.login-btn:active
{
   background-color:orange;
   color:black;
    border: none;
   border-radius: 20px;
}
a
{
 text-decoration:none;
 color: #E0F7FA; 
}

		.three{
			gap: 10px auto;
			padding: 5px;

		}
		.four{
			padding: 5px;
		}
		.success
		{
		   color:green;
		}
	</style>
</head>
<body>
<form action="login" method="POST">
	<div class="one">
	<h1>Login now</h1>
	<br>
	<%String successMsg = (String)request.getAttribute("success"); 
  if(successMsg!=null){%>
  <h1 class="success"><%=successMsg%></h1>
  <%}%>
  
  <%String successMessage=(String)request.getAttribute("success1");
  if(successMessage!=null){%>
  <h1 class="success"><%=successMessage%></h1>
  <%}%>
  
  <%String fail =(String)request.getAttribute("error");
  if(fail!=null){%>
  <h1 style="color:red"><%=fail%></h1>
  <%}%>
  
  <%String logout = (String)request.getAttribute("logout");
  if(logout!=null){%>
  <h1 style="color:green"><%=logout%></h1>
  <%}%>
  
  <%String logouterror = (String)request.getAttribute("logouterror");
  if(logouterror!=null){%>
  <h1 style="color:red"><%=logouterror%></h1>
  <%}%>
  
<div class="two">
<div class="input-container">
    <i class="fa-solid fa-envelope"></i>
    <input type="text" name="mail" placeholder="Enter Email" required>
</div>

<div class="input-container">
    <i class="fa-solid fa-unlock-keyhole"></i>
    <input type="password" name="password" placeholder="Enter Password" required>
</div>

	<button class="login-btn">Login</button>
</div>
	<p><a href="forgotPassword.jsp">forgot password?</a></p>
	<p><em><small>Already have an account?<a href="SignUp.jsp">SignUp</a></small></em></p>
</div>
</form>
</body>
</html>
