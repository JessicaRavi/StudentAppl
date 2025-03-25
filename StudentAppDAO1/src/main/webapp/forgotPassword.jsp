<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>

a
{
   text-decorator:none;
}
.container {
width :250px;
margin: 40px auto;		
  padding :30px;
  box-sizing: content-box;
  text-align:center;
  box-shadow: 0px 0px 10px blue;
  border:none;
  border-radius:20px;
 
}
input
{
   border-left-style: none;
       border-top-style: none;
       border-right-style: none;
       outline:none;
       display:inline;
}

button
{
  gap:30px;
}

</style>
</head>
<body>
 <form action="forgotpassword" method="POST">
 <div class="container">
 <h1>Update Password</h1>
 
 <%String failureMsg =(String)request.getAttribute("failure"); 
 if(failureMsg!=null){%>
 <%=failureMsg%>
 <%}%>
 
 <%String misMsg = (String)request.getAttribute("mismatched"); 
 if(misMsg!=null) {%>
 <%=misMsg%>
 <%}%>
 
 <%String notMsg = (String)request.getAttribute("notFound"); 
 if(notMsg!=null) {%>
 <%=notMsg%>
 <%}%>

 <i class="fa-solid fa-phone"><input type="text" name ="phone" placeholder="Enter Phone Number" >
 <br><br><br>
 <i class="fa-solid fa-at"><input type="text" name ="mail" placeholder="E-mail">
 <br><br><br>
 <i class="fa-solid fa-unlock-keyhole"><input type="password" name ="password" placeholder="Enter New Password">
 <br><br><br>
 <i class="fa-solid fa-unlock-keyhole"><input type="password" name ="confirmPass" placeholder="Confirm Password">
 <br><br><br>
<button type="submit">Update</button>
 <button><a href="Login.jsp">Back</a></button>
 </div>
 </form>
 </body>
 </html>