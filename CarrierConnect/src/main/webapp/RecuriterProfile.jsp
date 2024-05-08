<%@page import="carrierconnect.dto.Recruiter"%>
<%@page import="carrierconnect.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>careerconnect</title>
    <link rel="icon" type="image/x-icon" href="carrier connect  logo.png">
    <link rel="stylesheet" href="RecuriterProfileCss.css">
      <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-qXWmZT7wI3LGW+1b1F71EqJ3tn9ltm50/6Hvv1z0Uiu7s6U/mkk3dg9bs0GhZHp1" crossorigin="anonymous">
  <!-- Bootstrap Icons CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>
<%User user =(User) session.getAttribute("user"); %>
<% session.setAttribute("user", user); %>
<%Recruiter recruiter = (Recruiter) session.getAttribute("recruiter") ; %>
<% session.setAttribute("recruiter", recruiter); %>
	<nav class="navbar">
        <!-- Logo and name -->
        <div class="logo">
           <h2 class="logo" style="font-family: Bernard MT Condensed"> <img class="logotransperent" src="carrierconnectlogo.png" alt="Logo">CareerConnet</h2>
         </div>

        <!-- Navigation links -->
        <div class="nav-links">
            <a href="home.jsp"><button class="hover-button">Home</button></a>
            <a href="About.jsp"><button class="hover-button">About</button></a>
            <a href="Contact.jsp"><button class="hover-button">Contact</button></a>
             
             <!-- Profile button with Bootstrap icon -->
  <button class="btn btn-primary hover-button"><i class="bi bi-person"></i> <%=recruiter.getCompanyName() %></button>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  

        </div>
        <!-- Sign up and Sign in buttons --> 
    </nav>
   

    <!-- Middle section -->
    
    <div class="parent-div">
      <div class="card-content">
        <h2>User</h2>
          <!-- Content for the left side -->
          <br><br>
          <div class="left-content">
          	   <h3>Name:<%=user.getName() %></h3>
              <h3>Email Id:<%=user.getEmail() %></h3>
              <h3>Phone:<%=user.getPhone()%></h3>
              <h3>Address:<%=user.getAddress() %></h3>
              <h3>Gender:<%=user.getGender() %></h3>
              <h3>Type:<%=user.getType() %></h3>
              <input type="hidden" name="id" value=<%=user.getId()%>>
          </div>
          
          <a href="UserUpdate.jsp?id=<%=user.getId()%>"><button class="applybutton" role="button">EDIT</button></a>
          
      </div>
  
      <div class="card-content2">
        <h2>Recruiter</h2>
          <!-- Content for the right side -->
          
          <br><br>
          <div class="left-content">
           	  <h3 >Company Name:<%=recruiter.getCompanyName()%></h3>
              <h3>Company Id:<%=recruiter.getCompanyId() %></h3><h4></h4>
              <h3>Company Website:<%=recruiter.getCompanyWebsite() %></h3><h4></h4>
              <h3>Company Phone:<%=recruiter.getCompanyPhone() %></h3><h4></h4>
          </div><br>
          <div class="right-content">
              <h3>Company Email:<%=recruiter.getCompanyEmail()%></h3>
              <h3>Company Size:<%=recruiter.getCompanySize() %></h3>
              <h3>Company Address:<%=recruiter.getCompanyAddress() %></h3>
              <h3>Company Country:<%=recruiter.getCompanyCountry() %></h3>
              <h3>Company Description:<%=recruiter.getCompanyDescription() %></h3>
              <h3>Company Established Date:<%=recruiter.getCestablishedDate() %></h3>
              <input type="hidden" name="id" value=<%=recruiter.getRId()%> >
          </div>
          <a href="RecuriterUpdate.jsp?id=<%=recruiter.getRId()%>"><button class="applybutton" role="button">EDIT</button></a>
          
      </div>
  </div>

    

    <!-- scrolling image -->
   

<!-- footer section  -->
<footer class="footer">
    <img src="FOOTERLOGOCOMPANY-.png" alt="Footer Logo" class="footer-logo">
    <h1 class="footer_heading">Connect Your carrier with carrier connect</h1>
    <div class="container">
      <div class="footer-columns">
        <div class="footer-column">
          <h3>About Us</h3>
          <p>Unlocking Opportunities, Bridging Talent with Ambition: Carrier Connect - Where Careers Soar.</p>
        </div>
        <div class="footer-column">
          <h3>Quick Links</h3>
          <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Jobs</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact Us</a></li>
          </ul>
        </div>
        <div class="footer-column">
          <h3>Contact Us</h3>
          <p>Email: carrierconnet@carrier.com</p>
          <p>Phone: +774587456</p>   
        </div>
        </div>
      </div>
   
    <div class="footer-bottom">
        <p>&copy; 2024 carrierconnet. All rights reserved.</p>
      </div>
      
  </footer>

</body>
</html>