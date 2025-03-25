<%@page import="com.student.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<style>

a
{
  text-decoration:none;
  color: whitesmoke;
}

*
{
margin: 0;
padding: 0;
}

h2,h4
{
   text-align:center;
}

.navbar {
    display: flex;
    justify-content: space-between; 
    align-items: center;
    padding: 10px 20px;
    background-color: black;
    color: white;
}

.nav-links {
    display: flex;
    gap: 20px;
    list-style: none;
}
.dropbtn {
    background-color: black;
    color: white;
    border: none;
    cursor: pointer;
    font-size: 16px;
}

/* Dropdown container */
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown content (hidden by default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: white;
    min-width: 150px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    z-index: 1;
}

/* Dropdown links */
.dropdown-content a {
    color: black;
    padding: 10px;
    text-decoration: none;
    display: block;
}

/* Show dropdown on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

.logout-btn {
    background-color: darkred;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius:5px;
    cursor: pointer;
}

.logout-btn:active
{
   background-color:orange;
   color:black;
    border: none;
    border-radius:5px;
}
</style>
</head>
<body>

<%Student user =(Student)session.getAttribute("student");
if(user!=null){%>

<header>
<div class="navbar">
    <span>Welcome <%=user.getName()%></span>
    <div class="nav-links">
			<%if(user.getId()==1){%>
			<li><a href="ViewUser.jsp">View User</a></li>
			<%}%>
        <li><div class="dropdown">
              <button class="dropbtn">Update</button>
              <div class="dropdown-content">
                <a href="UpdateAccount.jsp">Update Account</a>
                </div>
                </div><li>
        <li><a href="ResetPassword.jsp">ResetPassword</a></li>
        <li><button class="logout-btn"><a href="Logout.jsp">Log Out</a></button></li>
    </div>
</div>

</header>
    <div class="container mt-4">
        <h2 class="text-center">Dashboard</h2>
<h3>View your Data</h3>
<h4 style="color:green"><%=request.getAttribute("success")%></h4>
<br>
        <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Phone</th>
      <th scope="col">Mail Id</th>
      <th scope="col">Branch</th>
      <th scope="col">Location</th>
    </tr>
  </thead>
            <tbody>
           <tr>
           <td><%=user.getId()%></td>
           <td><%=user.getName()%></td>
           <td><%=user.getPhone()%></td>
           <td><%=user.getMail()%></td>
           <td><%=user.getBranch() %></td>
           <td><%=user.getLocation()%></td>
           </tr>
            </tbody>

        </table>
    </div>
<%}%>
</body>
</html>


