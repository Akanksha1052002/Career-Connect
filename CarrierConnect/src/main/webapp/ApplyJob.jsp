
<%@page import="carrierconnect.dto.JobSeeker"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>job application</title>
    <link rel="stylesheet" href="apply.css">
     <style type="text/css">
    sup{
    color:red;
     font-size: 15px;
    }
    </style>
    <script>
  function toggleExperienceFields() {
    var hasExperience = document.getElementById("experience").checked;
    var experienceFields = document.getElementById("experienceFields");
    

    if (hasExperience) {
      experienceFields.style.display = "block";
    } else {
      experienceFields.style.display = "none";
    }
  }
</script>
</head>
<body>
<%JobSeeker seeker=(JobSeeker)session.getAttribute("seeker"); %>

<div id="main">
    <h1 id="title">Job Application</h1>
    
    <form id="survey-form" action="applyjob" method="post">
        <div class="form-group">
            <label for="name">Name<sup >*</sup>:</label>
            <input class="inp1" type="text" id="name" name="name" placeholder="Enter your full name" value="<%=seeker.getName()%>" required>
        </div>
        <div class="form-group">
            <label for="email">Email<sup >*</sup>:</label>
            <input class="inp1" type="email" id="email" name="email"  placeholder="example@gmail.com" value="<%=seeker.getEmail() %>" required>
        </div>
        <div class="form-group radio1"><br>
            <label for="text">Are you ready to relocate?<sup >*</sup></label>
            <input type="radio"  name="relocate" value="Yes"> Yes
            <input type="radio" name="relocate" value="No"> No
        </div>
        <div class="form-group">
            <label for="number">Expected CTC<sup >*</sup>:</label>
            <input class="inp1" type="text"  name="ctc" placeholder="Enter CTC">
        </div>
		<div class="form-group radio1">
            <label for="role">Do you have experience?<sup >*</sup></label>
           <input type="radio" name="experience" value="Yes" id="experience" onclick="toggleExperienceFields()">Yes
           <input type="radio" name="experience" value="No" onclick="toggleExperienceFields()">No
        </div>
        <div class="form-group"  id="experienceFields" style="display: none;">
            <label for="name">Company Name:</label>
            <input class="inp1" type="text" id="companyName" name="companyname" placeholder="Enter company name" >
       
        
            <label for="name">Current CTC:</label>
            <input class="inp1" type="text" id="currentctc" name="currentctc" placeholder="Enter current CTC" >
        
        
            <label for="name">Notice Period:</label>
            <input class="inp1" type="text" id="noticeperiod" name="noticeperiod" placeholder="Enter notice period" >
        </div>
        <div class="form-group">
            <button onclick="previewApplication()">Apply</button>
        </div>        
    </form>
    <div id="previewSection" style="display: none;">
        <h2>Preview Application Details</h2>
        <p><strong>Name:</strong> <span id="previewName"></span></p>
        <p><strong>Email:</strong> <span id="previewEmail"></span></p>
        <p><strong>Experience:</strong> <span id="previewExperience"></span></p>
        <p><strong>Current Role:</strong> <span id="previewRole"></span></p>
        <p><strong>Strongest Area:</strong> <span id="previewStrength"></span></p>
        <!-- Include other preview details -->
        <button type="button" onclick="editApplication()">Edit Application</button>
        <button type="submit" onclick="submitApplication()">Submit Application</button>
    </div>
</div>
<script src="apply.js"></script>
</body>
</html>