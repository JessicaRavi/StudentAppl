<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp </title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>

a
{
   text-decoration:none;
}
a:active
{
     color:lightblue;
    
     
   
}
	body{
	        text-align:left;
			
			background-repeat:no-repeat;
			background-attachment: fixed;
			background-size: cover;
		}
.container {
  width :500px;
  margin: 30px auto;		
  padding :20px;
  box-sizing: content-box;
  text-align:center;
  box-shadow:black;
  box-shadow: 0px 0px 10px black;
  border:none;
  border-radius:5px;
  box-gap:40px;
 
}
.block {
  color:whitesmoke;
  display: block;
  width: 100%;
  border: none;
  border-radius:20px;
  background-color: blue;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;
}
.block:active
{
  border:white;
  border-radius:20px;
  background-color:lightblue;
}


input, select {
    background: transparent;
    border: 1px solid #ccc;
    padding: 5px;
    color: nablue; 
}
p
{
   text-align:center;
}
.success
{
   color:green;
}

.failure
{
color: red;
}

</style>
</head>
<body>
<form action ="signup" method="POST">
<div class="container">
<h1>Application Form</h1> 
<hr>
 <%String errorMsg=(String)request.getAttribute("error");
 if(errorMsg!=null){%>
 <h1 class ="failure"><%=errorMsg%></h1>
 <%}%>
 
<i class="fa-solid fa-user-large"></i> <input type="text" name ="name" required="required" placeholder="Enter your Name:">
<i class="fa-solid fa-phone"></i><input type="tel" name="phone" required ="required"  placeholder="Enter Phone Number">
<br><br>
<i class="fa-solid fa-at"></i><input type ="text" name ="email" required="required" placeholder="Enter the Mail ID"><br><br>
<label>Enter the Branch:</label>
<select name ="branch">
<option>Computer Science and Engineering</option>
<option>Information Science</option>
<option>Artificial Intelligence and Machine Learning</option>
<option>Bachelors of Computer Application</option>
<option>Bachelors of Science</option>
<option>Data Science and Robotics</option>
<option>Electronics and Communication</option>
<option>Electrical Engineering</option>
<option>Civil Engineering</option>
<option>Mechanical Engineering</option>
</select>
<br><br>
<label>Enter the location:</label>
<select name ="loc">
<option>Bengaluru</option>
<option>Mysuru</option>
<option>Mangalore</option>
<option>Dharawad</option>
<option>Hyderabad</option>
<option>Mumbai</option>
<option>Pune</option>
<option>Chennai</option>
</select>
<br><br>
<i class="fa-solid fa-unlock-keyhole"></i><input type="password" name ="password" required ="required" placeholder="Enter the Password"> <i class="fa-solid fa-unlock-keyhole"></i><input type="password" name ="confirmpass" required ="required" placeholder="Confirm Password">
<br><br>
<input class="block" type="submit" value="Create Account">
<br>
<p><em><small>Already have an account?<a href="Login.jsp">Login</a></small></em></p>
</div>
</form>
</body>
</html>