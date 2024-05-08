
<%@page import="carrierconnect.dto.JobSeeker"%>
<%@page import="carrierconnect.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>careerconnet</title>
    <link rel="icon" type="image/x-icon" href="logo.png">
    <link rel="stylesheet" href="JobSeekerProfile.css">
    <style type="text/css">
     h5{
        font-size: 20px;
        color: rgb(77, 38, 0);
      }
      span{
      
      color: black !important;
      }
    </style>
    
      <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-qXWmZT7wI3LGW+1b1F71EqJ3tn9ltm50/6Hvv1z0Uiu7s6U/mkk3dg9bs0GhZHp1" crossorigin="anonymous">
  <!-- Bootstrap Icons CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
	
</head>
<body>
<%User user=(User)session.getAttribute("user");%> 
<%JobSeeker seeker=(JobSeeker)session.getAttribute("jobseeker");%>

	<nav class="navbar">
        <!-- Logo and name -->
        <div class="logo">
            <img src="carrier connect  logo.png" alt="Logo">
            <span>Career Connect</span>
        </div>

        <!-- Navigation links -->
        <div class="nav-links">
            <a href="JobSeekerHomepage.jsp"><button class="hover-button" >Home</button></a>
            <a href="About.jsp"><button class="hover-button">About</button></a>
            <a href="Contact.jsp"><button class="hover-button">Contact</button></a>
            
             <!-- Profile button with Bootstrap icon ->
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  

        </div>
        <!-- Sign up and Sign in buttons --> 
    </nav>
   

    <!-- Middle section -->
    
    <div class="parent-div">
      
  
      <div class="card-content2">
        <h4 style="text-align: center;font-size: 20px;">JobSeeker</h4>
          <!-- Content for the right side -->
          <br><br>
          <div class="left-content">
              <h3 style="color:red">Personal details</h3>
              <h5>Name: <span style="font-size: 15px;"><%=seeker.getName() %></span> </h5>
              <h5>Email:  <span style="font-size: 15px;"><%=seeker.getEmail()%></span></h5>
              <h5>Phone:  <span style="font-size: 15px;"><%=seeker.getPhone() %></span></h5>
              <h5>Address:  <span style="font-size: 15px;"><%=seeker.getJobSeekerLoc() %></span></h5>
                <h5>State: <span style="font-size: 15px;"><%=seeker.getState() %></span></h5>
              <h5>Pincode:  <span style="font-size: 15px;"><%=seeker.getPincode() %></span></h5>
          </div><br><br>
          <div class="right-content">
              <h3 style="color:red">10 th</h3>
              <h5>School Name:  <span style="font-size: 15px;"><%=seeker.getSchoolName() %></span></h5>
              <h5>Year Of Passout:  <span style="font-size: 15px;"><%=seeker.getSchoolYop() %></span></h5>
              <h5>Percentage:  <span style="font-size: 15px;"><%=seeker.getSchoolPer() %></span></h5>
              <h3 style="color:red">12 th</h3>
              <h5>HSC School Name:  <span style="font-size: 15px;"><%=seeker.getHscCollegeName() %></span></h5>
              <h5>Year Of Passout:  <span style="font-size: 15px;"><%=seeker.getHscYop() %></span></h5>
              <h5>Percentage: <span style="font-size: 15px;"><%=seeker.getHscPer() %></span></h5>
              <h3 style="color:red">Graduation</h3>
               <h5>College Name:  <span style="font-size: 15px;"><%=seeker.getCollegeName() %></span></h5>
              <h5>Degree:  <span style="font-size: 15px;"><%=seeker.getDegree() %></span></h5>
              <h5>Branch:  <span style="font-size: 15px;"><%=seeker.getBranch() %></span></h5>
              <h5>Year Of Passout:  <span style="font-size: 15px;"><%=seeker.getCollegeYop() %></span></h5>
              <h5>Percentage:  <span style="font-size: 15px;"><%=seeker.getCollegePer() %></span></h5>
              <h3 style="color:red">Post graduation</h3>
              <h5>PG College Name:  <span style="font-size: 15px;"><%=seeker.getPgCollegeName() %></span></h5>
              <h5>Degree:  <span style="font-size: 15px;"><%=seeker.getPgDegree()%></span></h5>
              <h5> Branch:  <span style="font-size: 15px;"><%=seeker.getPgBranch()%></span></h5>
              <h5> Year Of Passout:  <span style="font-size: 15px;"><%=seeker.getPgYOP() %></span></h5>
              <h5> Percentage: <span style="font-size: 15px;"><%=seeker.getPgPer() %></span></h5>
              <h5>Skills:  <span style="font-size: 15px;"><%=seeker.getJobSeekerSkills() %></span></h5>
              <h5>Fresher :  <span style="font-size: 15px;"><%=seeker.getType() %></span></h5>
              <h5>Have u done any internship?:  <span style="font-size: 15px;"><%=seeker.getInternship() %></span></h5>
              <h5>Company Name:  <span style="font-size: 15px;"><%=seeker.getCompanyName() %></span></h5>
              <h5>Company Address:  <span style="font-size: 15px;"><%=seeker.getCompanyAddress() %></span></h5>
              <h5>Internship experience:  <span style="font-size: 15px;"><%=seeker.getExperience() %></span></h5>
              <h5>CV:   <span style="font-size: 15px;"><%=seeker.getCv() %></span></h5>
              <h5>Cover Letter:   <span style="font-size: 15px;"><%=seeker.getCoverLetter() %></span></h5>
              
          </div>
          <a href="updateJobSeekerProfile.jsp"><button class="applybutton" role="button" >EDIT</button></a>
          
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
    </div>
    <div class="footer-bottom">
        <p>&copy; 2024 carrierconnet. All rights reserved.</p>
      </div>
      
  </footer>

</body>
<script src="JobSeekerProfile.js"></script>
</html>