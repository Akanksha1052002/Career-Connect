
<%@page import="carrierconnect.dto.Recruiter"%>
<%@page import="carrierconnect.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Recruiter Profile</title>
	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  	<meta name="description" content="Workociti">
  	<meta name="author" content="Workociti">
  	<meta name="keywords" content="Workociti">

  	<!-- Font special for pages-->
  	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

  	<!-- Main CSS-->
  	<link href="recruiter.css" rel="stylesheet" media="all">
</head>
<body>

<%User user = (User)session.getAttribute("use"); %>
<%User u = (User)request.getAttribute("use") ; %>
<%Recruiter recruiter = (Recruiter) session.getAttribute("recruiter") ; %>
	<div class="page-wrapper bg-dark p-t-100 p-b-50">
    <div class="wrapper wrapper--w900">
      <div class="card card-6">
        <div class="card-heading">
          <h2 class="title" >Update Recruiter</h2>
        </div>
        <div class="card-body">
          <form action="updateRecuriter" method="POST">

            <!--  Company Id -->
            <div class="form-row">
                <div class="name">Enter Company Id</div>
                <div class="value">
                  <input class="input--style-6" type="number" name="id" value="<%=recruiter.getCompanyId()%>" required>
                </div>
              </div>

            <!--Company name-->
            <div class="form-row">
              <div class="name">Enter Company name</div>
              <div class="value">
                <input class="input--style-6" type="text" name="name" value="<%=recruiter.getCompanyName()%>" required>
              </div>
            </div>

            <!--Company Website-->
            <div class="form-row">
                <div class="name">Enter Company Website</div>
                <div class="value">
                  <input class="input--style-6" type="text" name="website" value="<%=recruiter.getCompanyWebsite()%>" required>
                </div>
              </div>

              <!--Company Phone-->
            <div class="form-row">
                <div class="name">Enter Company Phone</div>
                <div class="value">
                  <input class="input--style-6" type="number" name="phone" value="<%=recruiter.getCompanyPhone()%>" pattern="[6-9]{1}[0-9]{9}" maxlength="10" required>
                </div>
              </div>

              <!-- Company email-->
            <div class="form-row">
                <div class="name">Official Email address</div>
                <div class="value">
                  <div class="input-group">
                    <input class="input--style-6" type="email" name="email" placeholder="example@email.com" value="<%=recruiter.getCompanyEmail()%>" required>
                  </div>
                </div>
              </div>

              <!--Company Size-->
            <div class="form-row">
                <div class="name">Enter Company Size</div>
                <div class="value">
                  <input class="input--style-6" type="number" name="size" value="<%=recruiter.getCompanySize()%>" required>
                </div>
              </div>

              <!--Current Address-->
            <div class="form-row">
                <div class="name">Location</div>
                <div class="value">
                  <div class="input-group">
                    <input class="textarea--style-6" type="text" name="address" placeholder="Enter your Address" value="<%=recruiter.getCompanyAddress()%>" required>
                  </div>
                </div>
              </div>


              <!-- Company Established Details -->
              <div class="form-row">
                <div class="name">Enter Company Established Dates</div>
                <div class="value">
                  <input class="input--style-6" type="date" name="date" value="<%=recruiter.getCestablishedDate()%>" required>
                </div>
              </div>

            <!--location-->
            <div class="form-row">
              <div class="name col-lg-2">Country</div>
              <div class="default-select" id="default-select">

               <!--  <select class="col-lg-6">
                  <option value="1">India</option>
                  <option value="1">Poland</option>
                  <option value="1">New Zeland</option>
                  <option value="1">Australia</option>

                </select> -->
              </div>
              <pre>     </pre>

              <div class="col-lg-4">
                <input class="input--style-6" type="text" name="country" placeholder="Country"  value="<%=recruiter.getCompanyCountry()%>" required>

              </div>
            </div>



            <div class="form-row">
              <div class="name">About the Company</div>
              <div class="value">
                <div class="input-group">
                  <input class="textarea--style-6" type="text" name="description" placeholder="Message sent to the employer"  value="<%=recruiter.getCompanyDescription()%>" required>
                </div>
              </div>
            </div>
				 <button class="btn btn--radius-2 btn--blue-2" style="margin-left: 45%;margin-top:5%">Update</button>
          </form>
        </div>
        <div class="card-footer">
         
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
  <script src="recruiter.js"></script>
  
  
  <% String message2 = (String)request.getAttribute("message"); %>
  <script>
    var messageContent = "<%= message2 %>";
</script>


  
  
</body>
</html>







































