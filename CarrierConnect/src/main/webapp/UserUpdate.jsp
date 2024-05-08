
<%@page import="carrierconnect.dto.Recruiter"%>
<%@page import="carrierconnect.dto.User"%>
<%@page import="carrierconnect.dao.JjDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Signup Form </title>
    <link rel="stylesheet" href="SignUpCSS.css">
</head>
<body>

<%String message = (String)request.getAttribute("message"); %>
<%if(message!=null){%>
	<%=message %>
	
<% }%>
<%

int id=Integer.parseInt(request.getParameter("id"));%>

<% JjDao dao=new JjDao();%>
<%User user = dao.findUser(id);%>

<%session.setAttribute("user", user);%>


<%session.setAttribute("user", user); %>
<%Recruiter recruiter = (Recruiter) session.getAttribute("recruiter") ; %>
    <div class="main-wrap">
        <div class="outer-wrap" style="height: 70vh">
            <h1>Update User</h1>
            <hr>
            <div class="social-login">
                <a href="#">
                    <img src="SignupImages/fb.png" alt="">
                </a>
                <a href="#">
                    <img src="SignupImages/google.png" alt="">
                </a>
                <a href="#">
                    <img src="SignupImages/twitter.png" alt="">
                </a>
            </div>
            <p>or sign up using your email</p>

            <form action="updateUser" class="form" method="post">
                <label for="name">Name</label>
                <br>
                <input type="text" name="name" id="name" placeholder="Name" value="<%=user.getName() %>" required>
                <br>
                <label for="email">Email</label>
                <br>
                <input type="email" name="email" id="email" placeholder="Email" value="<%=user.getEmail() %>" required>
                <br>

                <label for="phone no">Phone No</label>
                <br>
                <input type="text" name="phone" id="phonenumber" placeholder="Phone Number" maxlength="10" pattern="[0-9]{10}" title="Please enter a 10-digit phone number" value="<%=user.getPhone()%>" required>
                <br>
                <label for="name">Address</label>
                <br>
                <input type="text" name="address" id="Address" placeholder="Address" value="<%=user.getAddress() %>"  required>
                <!-- <input type="number" name="phonenumber" id="phonenumber" placeholder="Phone Number" > -->
                <br>

                
                <button type="submit" class="btn">Update</button>
            </form>
           
        </div>
    </div>
    
    <script src="signUpJS.js"></script>
    
</body>
</html>