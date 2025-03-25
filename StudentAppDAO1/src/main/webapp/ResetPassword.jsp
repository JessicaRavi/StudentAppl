<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
<style>

a
{
  text-decoration:none;
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

input
{
       border-left-style: none;
       border-top-style: none;
       border-right-style: none;
       outline:none;
}
</style>
</head>

<body>
<form>
<div class="container">
<h1>Reset Password</h1>
<label>Phone Number:</label>
<br>
<input type="tel" name="phone">
<br><br>
<label>Mail Id:</label>
<br>
<input type="text" name="mail" placeholder="@gmail.com">
<br><br>
<label>Set Password:</label>
<br>
<input type="password" name="pass" >
<br><br>
<label>Confirm Password:</label>
<br>
<input type="password" name="confirmPass">
<br><br>
<button>Reset</button>  
<button><a href="dashboard.jsp">Back</a></button>
<br>
</div>
</form>
</body>
</html>