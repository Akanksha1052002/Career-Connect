<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Signup Form </title>
    <style type="text/css">
    sup{
    color:red;
     font-size: 15px;
    }
    </style>
    <link rel="stylesheet" href="SignUpCSS.css">
</head>
<body>
    <div class="main-wrap">
        <div class="outer-wrap" style="height: 180vh">
        <br>
             <h1>Sign up</h1>
            <div class="social-login">
                <a href="#">
                    <img src="SignupImages/fb.png" alt="">
                </a>
                <a href="#">
                    <img src="SignupImages/google.png" alt="">
                </a>
                <a href="#">
                    <img src="SignupImages/twitter.png" alt="">
                </a>
            </div>
            <p>or sign up using your email</p>

            <form action="signup" class="form" method="post">
                <label for="name">Name<sup >*</sup></label>
                <br>
                <input type="text" name="name" id="name" placeholder="Name" onkeyup="validateName()" required><br/>
                <span id="error" style="color: red;"></span>
                <br>
                <label for="email">Email<sup >*</sup></label>
                <br>
                <input type="email" name="email" id="email" placeholder="Email" onkeyup="validateEmail()" required><br/>
                <span id="emailid" style="color: red;"></span>
                <br>

                <label for="phone no">Phone No<sup >*</sup></label>
                <br>
                <input type="text" name="phone" id="phonenumber" placeholder="Phone Number" maxlength="10" pattern="[6-9]{1}[0-9]{9}" onkeyup="validatePhone()" title="Please enter a 10-digit phone number" required><br/>
                <span id="contact" style="color: red;"></span>
                <br>
                <label for="name">Address<sup>*</sup></label>
                <br>
                <input type="text" name="address" id="Address" placeholder="Address" required>
                <!-- <input type="number" name="phonenumber" id="phonenumber" placeholder="Phone Number" > -->
                <br>


                <label for="password">Password<sup >*</sup></label>
                <br>
                <input type="password" name="password" id="password" placeholder="Password" onkeyup="validatePassword()" required><br/>
                <span id="pass" style="color: red;"></span>
                <br>
                <label for="confimpassword">Confirm Password<sup >*</sup></label>
                <br>
                <input type="password" name="confimpassword" id="confirm_password" placeholder="Confirm Password" onkeyup="validatePasswordMatch()" required><br/>
                <span id="confirmpass" style="color: red;"></span>
                <br>
                <label>Gender<sup>*</sup></label>
                <br>
                <input type="radio" name="gender" id="male" onkeyup="validateCheckbox()" value="male">
                <label for="male">Male</label>
                <input type="radio" name="gender" id="female" onkeyup="validateCheckbox()" value="female">
                <label for="female">Female</label>
                <input type="radio" name="gender" id="other" onkeyup="validateCheckbox()" value="other">
                <label for="other">Other</label><br/>
                <span id="checkboxError" style="color: red;"></span>
                <br>
                <label>User Type<sup >*</sup></label>
                <br>
                <input type="radio" name="type" id="recruiter" onkeyup="validateUserType()" value="recruiter">
                <label for="recruiter">Recruiter</label>
                <input type="radio" name="type" id="jobseeker" onkeyup="validateUserType()" value="jobseeker">
                <label for="jobseeker">Jobseeker</label><br/>
                <span id="userTypeError" style="color: red;"></span>
                
                <a href="SignIn.jsp">Already Registered</a>
                <br>
                <button type="submit" class="btn">Sign up</button>
            </form>
            
        </div>
    </div>
    
    <script src="signUpJS.js"></script>
    
    <script>
    function validatePhone() {
    	var phone=document.getElementById("phonenumber").value;
    	var phonestyle=document.getElementById("phonenumber");
    	var error=document.getElementById("contact");
    	var userexp=/^[6789][0-9]{9}$/;
    		if(userexp.test(phone))
    		{
    			error.innerHTML="";
    			phonestyle.style.outline="2px solid green";
    			phonestyle.style.border="none";
    			
    		}
    	else
    		{
    		error.innerHTML="please enter valid phone number";
    		phonestyle.style.outline="2px solid red";
    		phonestyle.style.border="none";
    		}	
    }
    
    function validateName() {
        var input = document.getElementById("name").value;
        var inputStyle = document.getElementById("name");
        var error = document.getElementById("error");
        var regex = /^[a-zA-Z\- ]+$/;

        if (regex.test(input)) {
            error.innerHTML = "";
            inputStyle.style.outline = "2px solid green";
            inputStyle.style.border = "none";
        } else {
            error.innerHTML = "please enter proper name";
            inputStyle.style.outline = "2px solid red";
            inputStyle.style.border = "none";
        }
    }
    
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
    
    function validatePassword() {
        var input = document.getElementById("password").value;
        var inputStyle = document.getElementById("password");
        var error = document.getElementById("pass");
        var regex = /^(?=.*[A-Z])(?=.*[!@#$%^&*])(?=.*[0-9]).{6,}$/;

        if (regex.test(input)) {
            error.innerHTML = "";
            inputStyle.style.outline = "2px solid green";
            inputStyle.style.border = "none";
        } else {
            error.innerHTML = "Password must contain at least one uppercase letter, one special character, one number, and be at least 6 characters long";
            inputStyle.style.outline = "2px solid red";
            inputStyle.style.border = "none";
        }
    }
    
    function validatePasswordMatch() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirm_password").value;
        var passwordStyle = document.getElementById("password");
        var confirmPasswordStyle = document.getElementById("confirm_password");
        var error = document.getElementById("confirmpass");

        if (password === confirmPassword) {
            error.innerHTML = "";
            passwordStyle.style.outline = "2px solid green";
            passwordStyle.style.border = "none";
            confirmPasswordStyle.style.outline = "2px solid green";
            confirmPasswordStyle.style.border = "none";
        } else {
            error.innerHTML = "Passwords do not match";
            passwordStyle.style.outline = "2px solid red";
            passwordStyle.style.border = "none";
            confirmPasswordStyle.style.outline = "2px solid red";
            confirmPasswordStyle.style.border = "none";
        }
    }
    
    function validateCheckbox() {
        var maleCheckbox = document.getElementById("male");
        var femaleCheckbox = document.getElementById("female");
        var otherCheckbox = document.getElementById("other");
        var error = document.getElementById("checkboxError");

        if (maleCheckbox.checked || femaleCheckbox.checked || otherCheckbox.checked) {
            error.innerHTML = "";
            return true; 
        } else {
            error.innerHTML = "Please select at least one checkbox";
            return false; 
        }
    }
    
    function validateUserType() {
        var recruiterRadio = document.getElementById("recruiter");
        var jobseekerRadio = document.getElementById("jobseeker");
        var error = document.getElementById("userTypeError");

        if (recruiterRadio.checked || jobseekerRadio.checked) {
            error.innerHTML = "";
            return true; 
        } else {
            error.innerHTML = "Please select either Recruiter or Jobseeker";
            return false; 
        }
    }
    
    
    </script>
    
    
    
</body>
</html>