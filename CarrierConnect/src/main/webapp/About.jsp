<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>About Us Section</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width", initial-scale="1.0"> 
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
    <link rel="stylesheet" type="text/css"  href="about.css">
</head>
<body>

	<div class="section">
        <div class="container">
            <div class="content-section">
                <div class="title">
                    <h1>About Us</h1>
                </div>
                <div class="content">
                    <h3>
          <p>Welcome to Carrier Connect, your premier destination for navigating the dynamic world of career opportunities. At Carrier Connect, we believe in bridging the gap between talented individuals and esteemed employers, empowering both parties to achieve their aspirations</p>
                        
                    </h3>
                    <h3>OUR Mission</h3>
          <p> Our mission is simple yet profound: to revolutionize the way individuals approach
             their careers and to transform the hiring process for employers. We are committed to providing innovative
              solutions, unparalleled support, and a user-centric platform that fosters success.
              We are committed to helping job seekers navigate the ever-evolving job market and land their dream jobs, while also supporting businesses in building high-performing teams and driving organizational success.</p>
                    <div class="button">
                        <a href="introductuon/introduction.jsp">Read About US</a>
                    </div>
                    
                </div>
                <div class="socail">
                    <a href=""><i class="fab fa-facebook-f"></i></a>
                    <a href=""><i class="fab fa-twitter"></i></a>
                    <a href=""><i class="fab fa-instagram"></i></a>
                    <a href=""><i class="fab fa-linkedin"></i></a>
                    <a href=""><i class="fab fa-github"></i></a>
                </div>
            </div>
            <div class="image-section">
                <img src="manabout3.jpg">
            </div>
        </div>
    </div>

<script>
    document.getElementById("read-more-btn").addEventListener("click", function(event) {
        event.preventDefault();
        var additionalInfo = document.getElementById("additional-info");
        if (additionalInfo.style.display === "none") {
            additionalInfo.style.display = "block";
            document.getElementById("read-more-btn").textContent = "Read Less";
        } else {
            additionalInfo.style.display = "none";
            document.getElementById("read-more-btn").textContent = "Read More";
            // Redirect to the selected page
            window.location.href = "introduction/id";
        }
    });
</script>

</body>
</html>