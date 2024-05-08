<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign In</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/signin-image.jpg" alt="sing up image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Create an
							account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign In</h2>
						<form method="get" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label> 
								<input type="text" name="email"  id="username"  placeholder="Email" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							<div class="form-group">
								<a href="forgetPassword.jsp">Forget Password</a>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Sign in" />
							</div>
						</form>
						<!-- <div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>-->
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	
	<script>
	function validateEmail() {
        var input = document.getElementById("email").value;
        var inputStyle = document.getElementById("email");
        var error = document.getElementById("emailid");
        var regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (regex.test(input)) {
            error.innerHTML = "";
            inputStyle.style.outline = "2px solid green";
            inputStyle.style.border = "none";
        } else {
            error.innerHTML = "Please enter a valid email address";
            inputStyle.style.outline = "2px solid red";
            inputStyle.style.border = "none";
        }
    }
	</script>
	
	
	
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>