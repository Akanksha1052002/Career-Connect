
<%@page import="carrierconnect.dto.GenerateRequirement"%>
<%@page import="carrierconnect.dao.JjDao"%>
<%@page import="carrierconnect.dto.JobSeeker"%>
<%@page import="carrierconnect.dto.Recruiter"%>
<%@page import="carrierconnect.dto.User"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jobseeker home page</title>
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

<% String keyword = request.getParameter("keyword") ;
			
			if(keyword!=null){
			   
		   	   
				JjDao dao=new JjDao();
	   		List<GenerateRequirement> list= dao.findSkills(keyword);
			
	   		 %>
<%

Collections.reverse(list) ;

%>


	
	<nav class="navbar">
        <!-- Logo and name -->
        <div class="logo">
           <h2 class="logo" style="font-family: Bernard MT Condensed"> <img class="logotransperent" src="carrierconnectlogo.png" alt="Logo">CareerConnet</h2>
        </div>

        <!-- Navigation links -->
        <div class="nav-links">
           <a href="JobSeekerHomepage.jsp"><button class="hover-button">Home</button></a>
            <a href="About.jsp"><button class="hover-button">About</button></a>
            <a href="myjobs.jsp"><button class="hover-button">My Jobs</button></a>
          
            
             <!-- Profile button with Bootstrap icon -->
  		<a href="JobSeekerProfile.jsp"><button class="btn btn-primary hover-button"><i class="bi bi-person"></i> </button></a>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  

        </div>
        <!-- Sign up and Sign in buttons -->
    </nav>
   

    <!-- Middle section -->
    
    
    <% if(list==null)
	{%>
	<h1 style="font-size: 100px; color: red">No Result Found</h1>
	<%} %>
     <% if(list!=null)
	{%>
	
	<% for(GenerateRequirement gr:list){ %>
    <div class="card-container">
      
      <div class="card">
          <div class="card-content">
              <div class="heading1"><h3 >Company Name:-  <span style="font-size: 20px;"><%=gr.getCompanyName()%></span></h3></div>
              <br><br>
              <div class="left-content">
                <h5>Job Id: <span style="font-size: 15px;"><%=gr.getJobId()%></span></h5>
                <h5>Designation: <span style="font-size: 15px;"><%=gr.getDesignation()%></span></h5>
                <h5>Degree: <span style="font-size: 15px;"><%=gr.getDegree()%></span></h5>
                <h5>Branch:  <span style="font-size: 15px;"><%=gr.getBranch()%></span></h5>
                <h5>CTC:  <span style="font-size: 15px;"><%=gr.getCtc()%></span></h5>
                <h5>Year Of Passout:  <span style="font-size: 15px;"><%=gr.getYop()%></span></h5>
                <h5>Required Skills:  <span style="font-size: 15px;"><%=gr.getRequiredSkills()%></span></h5>
                <h5>Vacancies:  <span style="font-size: 15px;"><%=gr.getNoOfEmp()%></span></h5>
                <h5>Experience:  <span style="font-size: 15px;"><%=gr.getExperience()%></span></h5>
               
            </div>
            <div class="right-content">                
                 <h5>Location:  <span style="font-size: 15px;"><%=gr.getJobLoc()%></span></h5>
                <h5>Last Date To Apply:  <span style="font-size: 15px;"><%=gr.getLastDateOfApply()%></span></h5>
                <h5>Description:  <span style="font-size: 15px;"><%=gr.getJobDescription()%></span></h5>
                 <h5>Roles and Responsibilities :  <span style="font-size: 15px;"><%=gr.getRolesAndResponsibilities()%></span></h5>
            </div>
            <h4 style="color:green"><%String apply=(String)request.getAttribute("Applied");%></h4>
            		
            <a href="SignUpJSP.jsp" ><button class="closebutton" role="button">Apply</button></a>
				
			
          </div>
      </div>
      
  </div>
<%} %>
	<%} %>
	<%} %>
	
    <!-- scrolling image -->
   

<!-- footer section  -->
<footer class="footer">
    <img src="FOOTERLOGOCOMPANY-.png" alt="Footer Logo" class="footer-logo">
    <h1 class="footer_heading">Connect Your career with career connect</h1>
    <div class="container">
      <div class="footer-columns">
        <div class="footer-column">
          <h3>About Us</h3>
          <p>Unlocking Opportunities, Bridging Talent with Ambition: Career Connect - Where Careers Soar.</p>
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
          <p>Email: careerconnect@career.com</p>
          <p>Phone: +774587456</p>   
        </div>
        </div>
      </div>
  
    <div class="footer-bottom">
        <p>&copy; 2024 careerconnect. All rights reserved.</p>
      </div>
      
  </footer>
  
  
 
  

</body>
</html>