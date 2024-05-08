<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Login Form | Wavefire Coding</title>
    <link rel="stylesheet" href="PasswordForgetCss.css">
</head>
<body>
	
    <div class="main-wrap">
        <div class="outer-wrap">
            <h1>Forget Password</h1>
            <hr>
            <div class="social-login">
                <a href="#">
                    <img src="forgetPassword Image/fb.png" alt="">
                </a>
                <a href="#">
                    <img src="forgetPassword Image/google.png" alt="">
                </a>
                <a href="#">
                    <img src="forgetPassword Image/twitter-x.avif" alt="">
                </a>
            </div>
            <p>Enter the details</p>

            <form id="loginForm" action="forgetpassword" class="form" method="post">
                <label for="email">Email</label>
                <br>
                <input type="email" name="email" id="email" placeholder="Email">
                <br>
                <label for="password">Password</label>
                <br>
                <input type="password" name="password" id="password" placeholder="Password"> <i id="togglePassword" class="fas fa-eye" style="color: #B197FC; position: absolute; top: 50%; right: 10px; transform: translateY(-50%); cursor: pointer;"></i>
                
                <br>
                <label for="confirm_password">Confirm Password</label>
                <br>
                <input type="password" name="confirmPassword" id="confirm_password" placeholder="Confirm Password">
                <br>
                
                <button type="submit" class="btn">Submit</button>
            </form>
            <div class="terms">
                <a href="#">Privacy Policy</a>
                <a href="#">Terms & Conditions</a>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js" integrity="sha512-zA6O0RCm0sISZIaM3a7pC4Hl9TbNxnpJAz/pnepFKoM2KIXar0Tu3O5beRM1aSntT7B4v8RfWfKed4jVf6P06A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="PasswordForgetJs.js"></script>
</body>
</html>