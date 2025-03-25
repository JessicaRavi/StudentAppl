<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.student.dto.Student"%>
<%@page import="com.student.dao.StudentDAOImpl"%>
<%@page import="com.student.dao.StudentDAO"%>
<!DOCTYPE html>
<html>
<head>
<title>View User</title>
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

h2
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
<header>
 <%Student user=(Student)session.getAttribute("student");
        if(user!=null) {%>

<div class="navbar">
    <div class="nav-links">
        <a class="navbar-brand-text" href="#">Welcome Admin: <%=user.getName()%></a>
        <button class="navbar-toggler"type="button" data-bs-toggle="collapse" ><span class="navbar-toggler-icon"></span></button>
        <li class="nav-item">
        <a class="btn-btn-primary" href="dashboard.jsp">Back</a>
        </li>
        <li class="nav-item">
        </li>
    </div>
</div>
</header>
<main>

    <div class="container mt-4">
        <h2 class="text-center">Student Data</h2>
        </div>
  <%String successMsg = (String)request.getAttribute("success"); 
  if(successMsg!=null){%>
  <h1 ><%=successMsg%></h1>
  <%}%>
  
  <%String errorMessage=(String)request.getAttribute("error");
if(errorMessage!=null){%>
<h1><%=errorMessage%></h1>
<%}%>
<br>
<div class ="row">
<div class="col-md-12">
        <table class="table">
  <thead class="thead-dark">
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Phone</th>
      <th>Mail Id</th>
      <th>Branch</th>
      <th>Location</th>
      <th>Remove</th>
    </tr>
  </thead>
  <%StudentDAO sdao=new StudentDAOImpl();
  ArrayList<Student> studentList=sdao.getStudent();
  for(Student s:studentList){%>
            <tbody>
           <tr>
         <td><%=s.getId()%></td>
           <td><%=s.getName()%></td>
           <td><%=s.getPhone()%></td>
           <td><%=s.getMail()%></td>
           <td><%=s.getBranch() %></td>
           <td><%=s.getLocation()%></td>
           <td>
              <form action="deleteUser",method="post">
                <input type="hidden" name="id" value="<%=s.getId()%>">
                <input type="submit" class="btn btn-danger" value="Delete">
             </form>
           </td>
          </tr>
       </tbody>
            <%}
            }%>
        </table>
    </div>
</main>
</body>
</html>