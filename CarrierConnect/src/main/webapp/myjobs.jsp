
<%@page import="carrierconnect.dto.GenerateRequirement"%>
<%@page import="carrierconnect.dto.ApplyJob"%>
<%@page import="carrierconnect.dto.JobSeeker"%>
<%@page import="carrierconnect.dto.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>my jobs</title>
    <style type="text/css">
      h5{
        font-size: 20px;
        color: rgb(77, 38, 0);
      }
      span{
      
      color: black !important;
      }
    </style>
    <link rel="icon" type="image/x-icon" href="carrier connect  logo.png">
    <link rel="stylesheet" href="HomeCss.css">
      <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-qXWmZT7wI3LGW+1b1F71EqJ3tn9ltm50/6Hvv1z0Uiu7s6U/mkk3dg9bs0GhZHp1" crossorigin="anonymous">
  <!-- Bootstrap Icons CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>
<%User user=(User)session.getAttribute("user");%> 
<%JobSeeker seeker=(JobSeeker)session.getAttribute("jobseeker");%>
<%session.setAttribute("seeker", seeker);%>

<%List<ApplyJob> list=seeker.getApply(); %>
<nav class="navbar">
        <!-- Logo and name -->
        <div class="logo">
            <img src="logo.png" alt="Logo">
            <span style="font-size: 1.5em;">CareerConnect</span>
        </div>

        <!-- Navigation links -->
        <div class="nav-links">
            <a href="JobSeekerHomepage.jsp"><button class="hover-button">Home</button></a>
            <button class="hover-button">About</button>
           
            
             <!-- Profile button with Bootstrap icon -->
  		<a href="JobSeekerProfile.jsp"><button class="btn btn-primary hover-button"><i class="bi bi-person"></i> <%=user.getName() %></button></a>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  

        </div>
       
    </nav>
    <h2 style="text-align: center; color: rgb(102, 51, 0)">Applied Jobs</h2>
    <% if(list!=null)
	{%>
	
	<%for(ApplyJob job:list){ %>
	 <% GenerateRequirement gr=job.getRequirement();%>
    <div class="card-container">
      
      <div class="card">
          <div class="card-content">
              <div class="heading1"><h3 >Company Name:-  <span style="font-size: 20px;"><%=gr.getCompanyName()%></span></h3></div>
              <br><br>
              <div class="left-content">
                <h5>Job Id: <span style="font-size: 15px;"><%=gr.getJobId()%></span></h5>
                <h5>Designation: <span style="font-size: 15px;"><%=gr.getDesignation()%></span></h5>
                <h5>Skills: <span style="font-size: 15px;"><%=gr.getRequiredSkills()%></span></h5>
                <h5>Job Location: <span style="font-size: 15px;"><%=gr.getJobLoc()%></span></h5>
                <h5>CTC: <span style="font-size: 15px;"><%=gr.getCtc()%></span></h5>
                <h5>Job Description:  <span style="font-size: 15px;"><%=gr.getJobDescription()%></span></h5>
                
                
                <input type="hidden" value=<%=job.getId()%> name="id">
               <%String apply=(String)request.getAttribute("apply"); %>
               <%if(apply!=null){ %>
              <%=apply %>
              <%} %>
            </div>
            	
			
          </div>
      </div>
      
  </div>

	<%}} %>
    
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
          <p>Email: careerconnet@carrier.com</p>
          <p>Phone: +774587456</p>   
        </div>
        </div>
      </div>
  
    <div class="footer-bottom">
        <p>&copy; 2024 careerconnet. All rights reserved.</p>
      </div>
      
  </footer>
    
      
</body>
</html>