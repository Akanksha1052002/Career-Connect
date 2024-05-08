<%@page import="carrierconnect.dao.JjDao"%>
<%@page import="carrierconnect.dto.GenerateRequirement"%>
<%@page import="carrierconnect.dto.Recruiter"%>
<%@page import="carrierconnect.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Requirement Posting</title>
	
	<meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	  <meta name="description" content="Workociti">
	  <meta name="author" content="Workociti">
	  <meta name="keywords" content="Workociti">
	
	  <!-- Font special for pages-->
	  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	
	  <!-- Main CSS-->
	  <link href="Generate_requirement.css" rel="stylesheet" media="all">
</head>
<body>


	<%
	
	int id=Integer.parseInt(request.getParameter("id"));
	JjDao dao=new JjDao();
	
	GenerateRequirement requirement = dao.findRequirementById(id); %>
<%User user = (User)session.getAttribute("user"); %>


<%Recruiter recruiter = (Recruiter) session.getAttribute("recruiter") ; 


session.setAttribute("recruiter", recruiter);
session.setAttribute("req", requirement);


%>
	<div class="page-wrapper bg-dark p-t-100 p-b-50">
    <div class="wrapper wrapper--w900">
      <div class="card card-6">
        <div class="card-heading">
          <h2 class="title">Update Requirement</h2>
        </div>
        <div class="card-body">
          <form method="POST" action="updateGeneraterequirement">

			 <input class="input--style-6" type="hidden" name="id" value="<%=requirement.getId()%>">
            <!--  Job Id -->
            <div class="form-row">
                <div class="name">Enter Job Id</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="jid" value="<%=requirement.getJobId()%>"  required>
                </div>
              </div>
              
                  <input class="input--style-6" type="hidden" name="rid" value="<%=recruiter.getRId()%>"  required>
              

              <!--Company Name-->
            <div class="form-row">
                <div class="name">Enter Company Name</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="name" value="<%=recruiter.getCompanyName()%>"  required>
                  </div>
              </div>

            <!--Designation-->
            <div class="form-row">
              <div class="name">Designation</div>
              <div class="value">
                <input class="input--style-6" type="text" name="designation" value="<%=requirement.getDesignation()%>"  required>
              </div>
            </div>

            <!--Company Degree-->
            <div class="form-row">
                <div class="name">Enter Degree</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="degree" value="<%=requirement.getDegree()%>"  required>
                </div>
              </div>

              <!--Company Branch-->
            <div class="form-row">
                <div class="name">Enter Branch</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="branch" value="<%=requirement.getBranch()%>"  required>
                </div>
              </div>

               <!--Company yop-->
            <div class="form-row">
                <div class="name">Enter YOP</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="yop" value="<%=requirement.getYop()%>"  required>
                </div>
              </div>

              <!--Company ctc-->
            <div class="form-row">
                <div class="name">Enter CTC</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="ctc" value="<%=requirement.getCtc()%>" required>
                </div>
              </div>

            <!--Company required_skills-->
            <div class="form-row">
                <div class="name">Enter Required Skills</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="requiredSkills" value="<%=requirement.getRequiredSkills()%>" required>
                </div>
              </div>

              <!--no_of_employee-->
            <div class="form-row">
                <div class="name">Enter No of employee</div>
                <div class="value">
                  <input class="input--style-6" type="number" name="noOfEmp" value="<%=requirement.getNoOfEmp()%>" required>
                </div>
              </div>

              <!--experience-->
            <div class="form-row">
                <div class="name">Enter No of experience required</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="experience" value="<%=requirement.getExperience()%>" required>
                </div>
              </div>

              <!--Last_Date_to_Apply-->
            <div class="form-row">
                <div class="name">Enter last date of this application</div>
                <div class="value">
                  <input class="input--style-6" type="date" name="lastDateOfApply" value="<%=requirement.getLastDateOfApply()%>" required>
                </div>
              </div>

              <!--Job_Location-->
            <div class="form-row">
                <div class="name">Enter Job Location</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="jobLoc" value="<%=requirement.getJobLoc()%>"  required>
                </div>
              </div>

              <!--Job_Description-->
            <div class="form-row">
                <div class="name">Enter Job Description</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="jobDescription" value="<%=requirement.getJobDescription()%>"  required>
                </div>
              </div>

              <!--roles_and_responsibility-->
            <div class="form-row">
                <div class="name">Enter Roles & Responsibility</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="rolesAndResponsibilities" value="<%=requirement.getRolesAndResponsibilities()%>" required>
                </div>
              </div>
				<div class="card-footer">
         		 <button class="btn btn--radius-2 btn--blue-2" type="submit">Update Requirement</button>
        </div>
          </form>
        </div>
        
      </div>
    </div>
  </div>

  <!-- Jquery JS-->
  <script src="signup/vendor/jquery/jquery.min.js"></script>

  <!--confirm password-->
  <script>
    var password = document.getElementById("password"),
      confirm_password = document.getElementById("confirm_password");

    function validatePassword() {
      if (password.value != confirm_password.value) {
        confirm_password.setCustomValidity("Passwords Don't Match");
      } else {
        confirm_password.setCustomValidity('');
      }
    }
  </script>

  <!-- Main JS-->
  <script src="Generate_requirement.js"></script>
  
  
  
  
  
</body>
</html>