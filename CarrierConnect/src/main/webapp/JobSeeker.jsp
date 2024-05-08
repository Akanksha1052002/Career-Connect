<%@page import="carrierconnect.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="JobSeeker1.css">
 <style type="text/css">
    sup{
    color:red;
     font-size: 15px;
    }
    </style>
<title>JobSeeker</title>
<script>
  function toggleExperienceFields() {
    var hasExperience = document.getElementById("internship").checked;
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

<%String message = (String)request.getAttribute("message"); %>
		<% HttpSession session2=request.getSession(); %>

 <%User user=(User) session.getAttribute("use"); %>     




<div class="main_div">
  <h1 style="text-align: center;">Candidate Registration</h1>
  
    <form action="jobseekerinsert" method="post">
      <div class="form-row">
      <h1>Personal details<sup >*</sup></h1>
        <div class="form-group col-md-6">
          <input type="text" class="form-control" id="inputEmail4" name="name" placeholder="Name" value="<%=user.getName()%>" required>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group col-md-6">
          <input type="email" class="form-control" id="inputEmail4" name="email" placeholder="Email" value="<%=user.getEmail()%>"  required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}">
        </div>
      </div>
      <div class="form-row">
        <div class="form-group col-md-6">
          <input type="text" class="form-control" id="inputEmail4" name="phone" value="<%=user.getPhone() %>" placeholder="phone number (e.g., 9876543210)" pattern="[6-9]{1}[0-9]{9}" maxlength="10" required>
        </div>
      </div>
      <div class="form-row">
      <label>Date Of Birth</label>
        <div class="form-group col-md-4">
          <input type="date" class="form-control" id="inputEmail4" name="dob" required>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group col-md-10">
          
          <input type="text" class="form-control" id="inputEmail4" name="address" placeholder="Address" value="<%=user.getAddress() %>" required>
        </div>
      </div>
      <div class="form-group">
        
        <input type="text" class="form-control" id="inputAddress" placeholder="Pincode" pattern="[1-9]{1}[0-9]{5}" name="pincode" required>
      </div>
      <div class="form-row">
        <div class="form-group col-md-7">
          
          <input type="text" class="form-control" id="inputCity" name="state" placeholder="State"  required>
        </div>
      </div>
      <h1>Education details</h1>
      <div class="10th">
        <h3>10th<sup >*</sup></h3>
        <div class="form-row">
          <div class="form-group col-md-7">
            
            <input type="text" class="form-control" id="inputCity" name="schoolname" placeholder="School Name" required>
          </div>
          <div class="form-group col-md-7">
            
            <input type="text" class="form-control" id="inputCity" name="yop" pattern="[1-9]{1}[0-9]{3}" placeholder="Year Of Passout" required>
          </div>
          <div class="form-group col-md-7">
            
            <input type="text" class="form-control" id="inputCity" name="schoolper" placeholder="Percentage(%)" pattern="\d{1,3}(\.\d{1,2})?|100(\.0{1,2})?" required>
          </div> 
        </div>
      </div>
      <h3>12 th/Diploma<sup >*</sup></h3>
      <div class="form-row">
        <div class="form-group col-md-7">
                    <input type="text" class="form-control" id="inputCity" name="hscCollege" placeholder="12th College Name/Diploma"  required>
        </div>
        <div class="form-group col-md-7">
          
          <input type="text" class="form-control" id="inputCity" name="hscyop" placeholder="Year Of Passout" pattern="[1-9]{1}[0-9]{3}" required>
        </div>
        <div class="form-group col-md-7">
          
          <input type="text" class="form-control" id="inputCity" name="hscper" placeholder="Percentage(%)" pattern="\d{1,3}(\.\d{1,2})?|100(\.0{1,2})?" required>
        </div> 
      </div>
      <h3>Graduation<sup >*</sup></h3>
      <div class="form-row">
        <div class="form-group col-md-7">
          <input type="text" class="form-control" id="inputCity" name="collegename" placeholder="College Name/University"  required>
        </div>
        <div class="form-group col-md-7">
          <input type="text" class="form-control" id="inputCity" name="degree" placeholder="Degree" required>
        </div>
        <div class="form-group col-md-7">
          <input type="text" class="form-control" id="inputCity" name="branch" placeholder="Branch" required>
        </div>
        <div class="form-group col-md-7">
          <!--  <label>Year Of Passout</label> -->
          <input type="text" class="form-control" id="inputCity" name="collegeyop" placeholder="Year of Passout" pattern="[1-9]{1}[0-9]{3}" required>
        </div>
        <div class="form-group col-md-7">
         
          <input type="text" class="form-control" id="inputCity" name="collegeper" placeholder="Percentage(%)/CGPA" pattern="\d{1,3}(\.\d{1,2})?|100(\.0{1,2})?" required>
        </div> 
      </div>
      <h3>Post Graduation</h3>
      <div class="form-row">
        <div class="form-group col-md-7">
          <input type="text" class="form-control" id="inputCity" name="pgcollegename" placeholder="PG College Name/University" >
        </div>
        <div class="form-group col-md-7">
          <input type="text" class="form-control" id="inputCity" name="pgdegree" placeholder="Degree" >
        </div>
        <div class="form-group col-md-7">
          <input type="text" class="form-control" id="inputCity" name="pgbranch" placeholder="Branch">
        </div>
        <div class="form-group col-md-7">
         
          <input type="text" class="form-control" id="inputCity" name="pgyop" placeholder="Year Of Passout" pattern="[1-9]{1}[0-9]{3}">
        </div>
        <div class="form-group col-md-7">
         
          <input type="text" class="form-control" id="inputCity" name="pgper" placeholder="Percentage(%)/CGPA" pattern="\d{1,3}(\.\d{1,2})?|100(\.0{1,2})?">
        </div> 
      </div>
      <h3>Skills<sup >*</sup></h3>
      <div>
        
        <input type="text" name="skills" placeholder="Enter Skills" required>
      </div>
        <h3>Are u Fresher?<sup >*</sup></h3>
        <input type="radio" class="radio" name="type" value="Yes"> Yes
        <input type="radio" class="radio" name="type" value="No" > No
        <h3>Have u done internship?<sup >*</sup></h3>
        <input class="radio"  type="radio" name="internship" id="internship" onclick="toggleExperienceFields()" value="Yes"> Yes
        <input class="radio" type="radio" name="internship" value="No" onclick="toggleExperienceFields()"> No
        <div id="experienceFields" style="display: none;">
          <input type="text" name="companyname"  id="companyName" placeholder="Company Name" >
          <input type="text" name="companyaddress" id="companyAddress"  placeholder="Company Address">
          <input type="number" name="experience"  id="experienceYears" placeholder="Experience">
        </div>
        <div>
         <h3>CV<sup>*</sup></h3>
        <input type="text" name="cv" placeholder="Cv/Resume" required>
        <input type="text" name="coverletter" placeholder="Cover Letter" >
      </div>
      <button type="submit" class="save-button">Save</button>
     
      </div>
      </div>
      
      
    </form>
  </div>


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



</body>
</html>