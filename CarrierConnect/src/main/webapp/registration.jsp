<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<%String message = (String)request.getAttribute("message"); %>
<%if(message!=null){%>
	<%=message %>
	
<% }%>
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="signup" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="tel" name="phone" id="contact" maxlength="10"
									placeholder="Contact no" pattern="[6-9]{1}[0-9]{9}" />
							</div>
							<!-- <div class="div-container" style="margin-bottom: 20px;">
    							<label class="type-label" for="recruiter">Recruiter</label>
    							<input type="radio" id="recruiter" name="type" value="recruiter" class="type" style=" margin-right: 10px;">
    							<label class="type-label" for="jobseeker" style=" margin-right: 20px; font-size: 16px; color: #333;">Job Seeker</label>
    							<input type="radio" id="jobseeker" name="type" value="jobseeker" class="type">
  							</div>-->
  							<div class="form-group">
								<label for="address"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="address" 
									placeholder="Address" />
							</div>
  							<div class="form-group">
								<label for="type"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="type" 
									placeholder="Recuriter/Jobseeker" />
							</div>
							<div class="form-group">
								<label for="gender"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="gender" 
									placeholder="Gender" />
							</div>
  							
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="pass" placeholder="Password" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="confimpassword" id="re_pass"
									placeholder="Repeat your password" />
							</div>
							
							<!--<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>-->
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS 
	<script src="vendor/jquery/jquery.min.js"></script>    -->
	<script src="js/main.js"></script>
	
	<script>
	
	// Function to validate phone number
	function validatePhoneNumber(phone) {
	    var phoneRegex = /^[6-9]\d{9}$/;
	    return phoneRegex.test(phone);
	}

	// Function to validate password
	function validatePassword(password) {
	    var passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
	    return passwordRegex.test(password);
	}

	// Function to validate email
	function validateEmail(email) {
	    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	    return emailRegex.test(email);
	}

	// Function to handle form submission
	function validateForm() {
	    var phone = document.getElementById('contact').value;
	    var password = document.getElementById('pass').value;
	    var confirmPassword = document.getElementById('re_pass').value;
	    var email = document.getElementById('email').value;

	    var errors = [];

	    // Validate phone number
	    if (!validatePhoneNumber(phone)) {
	        errors.push("Phone number should be 10 digits starting with 6-9.");
	    }

	    // Validate password
	    if (!validatePassword(password)) {
	        errors.push("Password should contain at least 8 characters, one uppercase letter, one digit, and one special character.");
	    }

	    // Confirm password
	    if (password !== confirmPassword) {
	        errors.push("Passwords do not match.");
	    }

	    // Validate email
	    if (!validateEmail(email)) {
	        errors.push("Invalid email format.");
	    }

	    // Display errors if any
	    if (errors.length > 0) {
	        var errorMessage = errors.join("\n");
	        alert(errorMessage);
	        return false; // Prevent form submission
	    }

	    return true; // Allow form submission
	}

	// Attach validation function to form submission
	<!-- document.getElementById('register-form').addEventListener('submit', validateForm);-->

	
	</script>

	<script src="js/main.js"></script>


</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>