<%--<%@page import="carrierconnect.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company</title>
</head>
<body>
<%String message = (String)request.getAttribute("message"); %>
<%if(message!=null){%>
	<%=message %>
	
<% }%>
<%User user = (User)session.getAttribute("use"); %>
<%User u = (User)request.getAttribute("use") ; %> --%>
				<!-- <form action="recuriter" method="post">
					<input type="text" placeholder="company Id" name="id" /><br><br>
					<input type="text" placeholder="companyName" name="name" /><br><br>
					<input type="text" placeholder="companyWebsite" name="website"/><br><br>
					<input type="tel" placeholder="companyPhone" name="phone"/><br><br>
					<input type="email" placeholder="companyEmail" name="email"/><br><br>
					<input type="text" placeholder="companySize " name="size"/><br><br>
					<input type="text" placeholder="companyAddress" name="address"/><br><br>
					<input type="text" placeholder="companyCountry" name="country"/><br><br>
					<input type="text" placeholder="companyDescription" name="description"/><br><br>
					<input type="text" placeholder="cestablishedDate" name="date"/><br><br> 
					<button class="btnn"><b class="btnname">Create</b></button>
					<button class="btnn"><b class="btnname">Cancle</b></button><br>
						
				</form>
</body>
</html> -->
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
  	 <style type="text/css">
    sup{
    color:red;
     font-size: 15px;
    }
    </style>

  	<!-- Font special for pages-->
  	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

  	<!-- Main CSS-->
  	<link href="recruiter.css" rel="stylesheet" media="all">
  	<script type="text/javascript">
  	 function validateInput() {
	    	 var input = document.getElementById("companyid").value;
	    	
	            var inputStyle = document.getElementById("companyid");
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
  	 function validate() {
    	 var input = document.getElementById("size").value;
    	
            var inputStyle = document.getElementById("size");
            var errorsize = document.getElementById("errorsize");
            var regex = /^\d+$/;

            if (regex.test(input) ) {
            	errorsize.innerHTML = "";
                inputStyle.style.outline = "2px solid green";
                inputStyle.style.border = "none";
            } else {
            	errorsize.innerHTML = "Please enter a positive integer number";
                inputStyle.style.outline = "2px solid red";
                inputStyle.style.border = "none";
                
            }
	}
  	</script>
</head>
<body>
<%String message = (String)request.getAttribute("message"); %>
<%if(message!=null){%>
	<%=message %>
	
<% }%>
<%--<%User user = (User)session.getAttribute("use"); %>
<%User u = (User)request.getAttribute("use") ; %>--%>
	<div class="page-wrapper bg-dark p-t-100 p-b-50">
    <div class="wrapper wrapper--w900">
      <div class="card card-6">
        <div class="card-heading">
          <h2 class="title" >Recruite Profile<sup>*</sup></h2>
        </div>
        <div class="card-body">
          <form action="recuriter" method="POST">

            <!--  Company Id -->
            <div class="form-row">
                <div class="name">Enter Company Id<sup>*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="id" required onkeyup="validateInput()" id="companyid" pattern="[1-9]{1}[0-9]{4}" maxlength="5"><br>
                  <span id="error" style="color: red;"></span>
                </div>
              </div>

            <!--Company name-->
            <div class="form-row">
    			<div class="name">Enter Company Name<sup>*</sup></div>
    			<div class="value">
        			<input id="phoneNumber" class="input--style-6" type="text" name="name" required>
    			</div>
			</div>
            
            <!-- <div class="form-row">
              <div class="name">Enter Company name</div>
              <div class="value">
                <input class="input--style-6" type="text" name="name" required>
              </div>
            </div> -->

            <!--Company Website-->
            <div class="form-row">
                <div class="name">Enter Company Website<sup>*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="website" required>
                </div>
              </div>

              <!--Company Phone-->
            <div class="form-row">
                <div class="name">Enter Company Phone<sup>*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="tel" name="phone" maxlength="10" minlength="10" placeholder="phone number (e.g., 9876543210)" pattern="[6-9]{1}[0-9]{9}" required>
                  
                </div>
              </div>

              <!-- Company email-->
            <div class="form-row">
                <div class="name">Official Email address<sup>*</sup></div>
                <div class="value">
                  <div class="input-group">
                    <input class="input--style-6" type="email" name="email" placeholder="example@email.com" required>
                  </div>
                </div>
              </div>

              <!--Company Size-->
            <div class="form-row">
                <div class="name">Enter Company Size<sup>*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="text" name="size" id="size" required onkeyup="validate()">
                  <span id="errorsize" style="color: red;"></span>
                </div>
              </div>

              <!--Current Address-->
            <div class="form-row">
                <div class="name">Location<sup>*</sup></div>
                <div class="value">
                  <div class="input-group">
                    <input class="textarea--style-6" name="address" placeholder="Enter your Address" pattern="[A-Za-z]+" required>
                  </div>
                </div>
              </div>


              <!-- Company Established Details -->
              <div class="form-row">
                <div class="name">Enter Company Established Dates<sup>*</sup></div>
                <div class="value">
                  <input class="input--style-6" type="date" name="date" required>
                </div>
              </div>

            <!--location-->
            <div class="form-row">
              <div class="name col-lg-2">Country<sup>*</sup></div>
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
                <input class="input--style-6" type="text" name="country" placeholder="Country" pattern="[A-Za-z]+" required>

              </div>
            </div>



            <div class="form-row">
              <div class="name">About  Company<sup>*</sup></div>
              <div class="value">
                <div class="input-group">
                  <input class="textarea--style-6" name="description" type="text" placeholder="Message sent to the employer" required>
                </div>
              </div>
            </div>
				 <button class="btn btn--radius-2 btn--blue-2" style="margin-left: 45%;margin-top:5%">Submit</button>
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


<script>
const phoneInput = document.getElementById('phoneNumber');
const phoneError = document.getElementById('phoneError');

phoneInput.addEventListener('input', function () {
    const phoneNumber = phoneInput.value;
    const phoneNumberPattern = /^\d{10}$/;

    if (phoneNumberPattern.test(phoneNumber)) {
        phoneError.textContent = ''; // Clear error message if validation passes
    } else {
        phoneError.textContent = 'Please enter a 10-digit phone number'; // Display error message
    }
});
</script>


  <!-- Main JS-->
  <script src="recruiter.js"></script>
</body>
</html>







































