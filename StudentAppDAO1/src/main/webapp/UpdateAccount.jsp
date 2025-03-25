<%@page import="com.student.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Account</title>

<style>

a{
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

input[type="text"]
{
       border-left-style: none;
       border-top-style: none;
       border-right-style: none;
       outline:none;
}
input[type="tel"]
{
       border-left-style: none;
       border-top-style: none;
       border-right-style: none;
       outline:none;
}

</style>
</head>
<body>
<h1>Update Account</h1>
<form action ="updateAccount" method="POST">
<%Student user=(Student)session.getAttribute("student"); 
if(user!=null){%>

<%String successMessage=(String)request.getAttribute("success");
if(successMessage!=null){%>
<h1><%=successMessage%></h1>
<%}%>

<%String errorMessage=(String)request.getAttribute("error");
if(errorMessage!=null){%>
<h1><%=errorMessage%></h1>
<%}%>
<div class="container">
<label>Name:</label>
<input type="text" name ="name" required="required" value="<%=user.getName()%>">
<br><br>
<label>Phone Number:</label>
<input type="tel" name="phone" required ="required" value="<%=user.getPhone()%>">
<br><br>
<label>Mail ID:</label>
<input type ="text" name ="email" required="required" value="<%=user.getMail()%>">
<br><br>
<label>Branch:</label>
<input type="text" name = "branch" required="required" value="<%=user.getBranch()%>">
<br><br>
<label>Location:</label>
<input type="text" name = "loc" required="required" value="<%=user.getLocation()%>">
<br><br>
<input type="submit" value="Update">

<button><a href="dashboard.jsp">Back</a></button>
</div>
<%}
else
{
	request.setAttribute("error","Session Expired");
	RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
	rd.forward(request,response);
}
%>

</form>
</body>
</html>