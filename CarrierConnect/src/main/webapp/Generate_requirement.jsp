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
		 <style type="text/css">
    sup{
    color:red;
     font-size: 15px;
    }
    </style>
	  <!-- Font special for pages-->
	  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	
	  <!-- Main CSS-->
	  <link href="Generate_requirement.css" rel="stylesheet" media="all">
	  <script type="text/javascript">
	     function validateInput() {
	    	 var input = document.getElementById("jobid").value;
	    	
	            var inputStyle = document.getElementById("jobid");
	            var error = document.getElementById("error");
	           
	           
	            var regex = /^\d+$/;

	            if (regex.test(input) ) {
	                error.innerHTML = "";
	                inputStyle.style.outline = "2px solid green";
	                inputStyle.style.border = "none";
	            } else {
	                error.innerHTML = "Please enter a positive integer number";
	                inputStyle.style.outline = "2px solid red";
	                inputStyle.style.border = "none";
	                
	            }
		}
	     function validateInputEmp() {
	    	 var input = document.getElementById("emp").value;
	    	
	            var inputStyle = document.getElementById("emp");
	            var error = document.getElementById("errorEmp");
	           
	           
	            var regex = /^\d+(\.\d+)?$/;

	            if (regex.test(input) ) {
	                error.innerHTML = "";
	                inputStyle.style.outline = "2px solid green";
	                inputStyle.style.border = "none";
	            } else {
	                error.innerHTML = "Please enter a positive integer number";
	                inputStyle.style.outline = "2px solid red";
	                inputStyle.style.border = "none";
	                
	            }
		}
	     
	  </script>
</head>
<body>

<%User user = (User)session.getAttribute("user"); %>


<%Recruiter recruiter = (Recruiter) session.getAttribute("recruiter") ; 


session.setAttribute("recruiter", recruiter);

%>
	<div class="page-wrapper bg-dark p-t-100 p-b-50">
    <div class="wrapper wrapper--w900">
      <div class="card card-6">
        <div class="card-heading">
          <h2 class="title">Posting Job</h2>
        </div>
        <div class="card-body">
          <form method="POST" action="generaterequirement">

            <!--  Job Id -->
            <div class="form-row">
                <div class="name">Enter Job Id<sup >*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="id" id="jobid" onkeyup="validateInput()"><br>
                   <span id="error" style="color: red;"></span>
                </div>
              </div>
              
                  <input class="input--style-6" type="hidden" name="rid" value="<%=recruiter.getRId()%>">
              

              <!--Company Name-->
            <div class="form-row">
                <div class="name">Enter Company Name<sup >*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="name" value="<%=recruiter.getCompanyName() %>" required>
                  </div>
              </div>

            <!--Designation-->
            <div class="form-row">
              <div class="name">Designation<sup >*</sup></div>
              <div class="value">
                <input class="input--style-6" type="text" name="designation" required>
              </div>
            </div>

            <!--Company Degree-->
            <div class="form-row">
                <div class="name">Enter Degree<sup >*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="degree" required>
                </div>
              </div>

              <!--Company Branch-->
            <div class="form-row">
                <div class="name">Enter Branch<sup >*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="branch" required>
                </div>
              </div>

               <!--Company yop-->
            <div class="form-row">
                <div class="name">Enter YOP<sup >*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="yop" required>
                </div>
              </div>

              <!--Company ctc-->
            <div class="form-row">
                <div class="name">Enter CTC<sup >*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="ctc" required>
                </div>
              </div>

            <!--Company required_skills-->
            <div class="form-row">
                <div class="name">Enter Required Skills<sup >*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="requiredSkills" required>
                </div>
              </div>

              <!--no_of_employee-->
            <div class="form-row">
                <div class="name">Enter No of employee<sup >*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="number" name="noOfEmp" required onkeyup="validateInputEmp()" id="emp"><br>
                  <span id="errorEmp" style="color: red;"></span>
                </div>
              </div>

              <!--experience-->
            <div class="form-row">
                <div class="name">Enter No of experience required<sup >*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="experience" required>
                </div>
              </div>

              <!--Last_Date_to_Apply-->
            <div class="form-row">
                <div class="name">Enter last date of this application<sup >*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="date" name="lastDateOfApply" required>
                </div>
              </div>

              <!--Job_Location-->
            <div class="form-row">
                <div class="name">Enter Job Location<sup >*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="jobLoc"  required>
                </div>
              </div>

              <!--Job_Description-->
            <div class="form-row">
                <div class="name">Enter Job Description<sup >*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="jobDescription"  required>
                </div>
              </div>

              <!--roles_and_responsibility-->
            <div class="form-row">
                <div class="name">Enter Roles & Responsibility<sup >*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="rolesAndResponsibilities" required>
                </div>
              </div>
				<div class="card-footer">
         		 <button class="btn btn--radius-2 btn--blue-2" type="submit">Generate Requirement</button>
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