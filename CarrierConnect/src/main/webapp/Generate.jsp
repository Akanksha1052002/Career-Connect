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
	<div class="page-wrapper bg-dark p-t-100 p-b-50">
    <div class="wrapper wrapper--w900">
      <div class="card card-6">
        <div class="card-heading">
          <h2 class="title">Posting Job</h2>
        </div>
        <div class="card-body">
          <form method="POST">

            <!--  Job Id -->
            <div class="form-row">
                <div class="name">Enter Job Id</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="company_id">
                </div>
              </div>

              <!--Company Name-->
            <div class="form-row">
                <div class="name">Enter Company Name</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="company_name">
                </div>
              </div>

            <!--Designation-->
            <div class="form-row">
              <div class="name">Designation</div>
              <div class="value">
                <input class="input--style-6" type="text" name="company_name">
              </div>
            </div>

            <!--Company Degree-->
            <div class="form-row">
                <div class="name">Enter Degree</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="company_degree">
                </div>
              </div>

              <!--Company Branch-->
            <div class="form-row">
                <div class="name">Enter Branch</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="company_branch">
                </div>
              </div>

               <!--Company yop-->
            <div class="form-row">
                <div class="name">Enter YOP</div>
                <div class="value">
                  <input class="input--style-6" type="number" name="company_yop">
                </div>
              </div>

              <!--Company ctc-->
            <div class="form-row">
                <div class="name">Enter CTC</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="company_ctc">
                </div>
              </div>

            <!--Company required_skills-->
            <div class="form-row">
                <div class="name">Enter Required Skills</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="required_skills">
                </div>
              </div>

              <!--no_of_employee-->
            <div class="form-row">
                <div class="name">Enter No of employee</div>
                <div class="value">
                  <input class="input--style-6" type="number" name="no_of_employee">
                </div>
              </div>

              <!--experience-->
            <div class="form-row">
                <div class="name">Enter No of experience required</div>
                <div class="value">
                  <input class="input--style-6" type="number" name="experience">
                </div>
              </div>

              <!--Last_Date_to_Apply-->
            <div class="form-row">
                <div class="name">Enter last date of this application</div>
                <div class="value">
                  <input class="input--style-6" type="number" name="Last_Date_to_Apply">
                </div>
              </div>

              <!--Job_Location-->
            <div class="form-row">
                <div class="name">Enter Job Location</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="Job_Location">
                </div>
              </div>

              <!--Job_Description-->
            <div class="form-row">
                <div class="name">Enter Job Description</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="Job_Description">
                </div>
              </div>

              <!--roles_and_responsibility-->
            <div class="form-row">
                <div class="name">Enter Roles & Responsibility</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="roles_and_responsibility">
                </div>
              </div>

          </form>
        </div>
        <div class="card-footer">
          <button class="btn btn--radius-2 btn--blue-2" type="submit">Generate Requirement</button>
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