
<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="carrierconnect.dao.JjDao"%>
<%@page import="carrierconnect.dto.GenerateRequirement"%>
<%@page import="java.util.List"%>
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
    <link rel="stylesheet" href="HomeCss.css">
      <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-qXWmZT7wI3LGW+1b1F71EqJ3tn9ltm50/6Hvv1z0Uiu7s6U/mkk3dg9bs0GhZHp1" crossorigin="anonymous">
  <!-- Bootstrap Icons CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>
<%String message = (String)request.getAttribute("message"); %>
		<% HttpSession session2=request.getSession(); %>
<%if(message!=null){%>
	<%=message %>
	
<% }%>
<%User user =(User) session.getAttribute("user"); %>
<% session.setAttribute("user",user);%>
<%Recruiter recruiter = (Recruiter) session.getAttribute("recruiter") ; %>


<br>

<% 
JjDao dao=new JjDao();
List<GenerateRequirement> list=dao.requirmentList(recruiter);
Collections.reverse(list) ;

%>


	
	<nav class="navbar">
        <!-- Logo and name -->
        <div class="logo">
            <img src="carrier connect  logo.png" alt="Logo">
            <span style="font-size: 1.5em;">CareerConnect</span>
        </div>

        <!-- Navigation links -->
        <div class="nav-links">
            <a href="home.jsp"><button class="hover-button">Home</button></a>
            <a href="About.jsp"><button class="hover-button">About</button></a>
            <a href="Generate_requirement.jsp"><button class="hover-button">Generate Requirement</button></a>
             <!-- Profile button with Bootstrap icon -->
  		<a href="RecuriterProfile.jsp"><button class="btn btn-primary hover-button"><i class="bi bi-person"></i><%=recruiter.getCompanyName() %></button></a>
  		
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  

        </div>
        <!-- Sign up and Sign in buttons -->
    </nav>
   

    <!-- Middle section -->
     <% if(list!=null)
	{%>
	
	<% for(GenerateRequirement gr:list){ %>
    <div class="card-container">
      
      <div class="card">
          <div class="card-content">
              <div class="heading1"><h3 >Company Name:-<%=gr.getCompanyName()%></h3></div>
              <br><br>
              <div class="left-content">
                <h5>Job Id:<%=gr.getJobId()%></h5>
                <h5>Designation:<%=gr.getDesignation()%></h5>
                <h5>Degree:<%=gr.getDegree()%></h5>
                <h5>Branch:<%=gr.getBranch()%></h5>
                <h5>CTC:<%=gr.getCtc()%></h5>
                <h5>Year Of Passout:<%=gr.getYop()%></h5>
            </div>
            <div class="right-content">
                <h5>Required Skills:<%=gr.getRequiredSkills()%></h5>
                <h5>Vacancies:<%=gr.getNoOfEmp()%></h5>
                <h5>Experience:<%=gr.getExperience()%></h5>
                <h5>Location:<%=gr.getJobLoc()%></h5>
                <h5>Last Date To Apply:<%=gr.getLastDateOfApply()%></h5>
                <h5>Description:<%=gr.getJobDescription()%></h5>
                 <h5>Roles and Responsibilities :<%=gr.getRolesAndResponsibilities()%></h5>
            </div>
            <input type="hidden" value="<%=gr.getId()%>" name="id">
            	<%--<%
	     session2.setAttribute("req",gr);
		%>--%>
              <a href="UpdateGenerateRequirement.jsp?id=<%=gr.getId()%>"><button class="closebutton" role="button">Update Requirements</button></a>
				
			
          </div>
      </div>
      
  </div>
<%} %>
	<%} %>

    <!-- scrolling image -->
   

<!-- footer section  -->
<footer class="footer">
    <img src="FOOTERLOGOCOMPANY-.png" alt="Footer Logo" class="footer-logo">
    <h1 class="footer_heading">Connect Your Career with carrier connect</h1>
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
  
  
  
  <% String message2 = (String)request.getAttribute("message"); %>
  <script>
    var messageContent = "<%= message2 %>";
</script>

<script>
    // Function to display message in a pop-up window
    function displayMessage() {
        // Check if messageContent variable is not empty
        if (typeof messageContent !== 'undefined' && messageContent) {
            // Display message in a pop-up window
            alert(messageContent);
        }
    }

    // Call the function to display message when the page loads
    
    
    window.onload = function() {
        displayMessage();
    };
</script>
  
  
  
  

</body>
</html>