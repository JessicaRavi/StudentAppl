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
body {
    text-align: left;
    background-image: url('https://i1.wp.com/azmind.com/demo/bootstrap-registration-forms/form-2/assets/img/backgrounds/2.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    background-position: center;
}


.container {
    width: 500px;
    margin: 30px auto;
    padding: 20px;
    text-align: center;
    background: rgba(0, 0, 0, 0.5);
    box-shadow: 0px 0px 10px black;
    border-radius: 10px;
    color: white;
}


a {
    text-decoration: none;
}
a:active {
    color: lightblue;
}


input, select {
    width: 90%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background: rgba(255, 255, 255, 0.8);
    color: black;
}


input:focus, select:focus {
    background: white;
    border: 2px solid blue;
    outline: none;
}


.input-group {
    position: relative;
    width: 100%;
    margin-bottom: 15px;
}

.input-group i {
    position: absolute;
    left: 10px;
    top: 50%;
    transform: translateY(-50%);
    color: #555;
}


.input-group input {
    width: 100%;
    padding: 12px 12px 12px 40px; 
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}


.input-group input[type="password"] {
    padding: 12px 12px 12px 40px;
}


select {
    width: 100%;
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
}


.block {
    background-color: blue;
    color: white;
    border: none;
    border-radius: 20px;
    padding: 14px 28px;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
    width: 100%;
    text-align: center;
}

.block:hover {
    background-color: lightblue;
    color: black;
}

.block:active {
    background-color: lightblue;
    border-radius: 20px;
}


p {
    text-align: center;
}


.success {
    color: green;
}

.failure {
    color: red;
}
</style>
</head>
<body>
<form action="signup" method="POST">
    <div class="container">
        <h1>Application Form</h1>
        <hr>

        <% String errorMsg = (String) request.getAttribute("error");
        if (errorMsg != null) { %>
            <h1 class="failure"><%= errorMsg %></h1>
        <% } %>

        <div class="input-group">
            <i class="fa-solid fa-user"></i>
            <input type="text" name="name" required placeholder="Enter your Name">
        </div>

        <div class="input-group">
            <i class="fa-solid fa-phone"></i>
            <input type="tel" name="phone" required placeholder="Enter Phone Number">
        </div>

        <div class="input-group">
            <i class="fa-solid fa-at"></i>
            <input type="email" name="email" required placeholder="Enter the Mail ID">
        </div>

        <label>Enter the Branch:</label>
        <select name="branch">
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
        <select name="loc">
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

        <div class="input-group">
            <i class="fa-solid fa-lock"></i>
            <input type="password" name="password" required placeholder="Enter the Password">
        </div>

        <div class="input-group">
            <i class="fa-solid fa-lock"></i>
            <input type="password" name="confirmpass" required placeholder="Confirm Password">
        </div>

        <br>
        <input class="block" type="submit" value="Create Account">
        <br>
        <p><em><small>Already have an account? <a href="Login.jsp">Login</a></small></em></p>
    </div>
</form>
</body>
</html>
