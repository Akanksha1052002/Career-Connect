
<%@page import="carrierconnect.dto.JobSeeker"%>
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
<title>Insert title here</title>
</head>
<body>


<%
	User user = (User) session.getAttribute("user");
	%>
	<%
	JobSeeker seeker = (JobSeeker) session.getAttribute("jobseeker");
	%>
<div class="main_div">
  <h1 style="text-align: center;">Candidate Registration</h1>
  
    <form action="updatejobseeker" method="post">
      <div class="form-row">
        <div class="form-group col-md-6">
          <input type="text" class="form-control" id="inputEmail4" name="name" placeholder="Name" value="<%=seeker.getName()%>"  required>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group col-md-6">
          <input type="email" class="form-control" id="inputEmail4" name="email" placeholder="Email" value="<%=seeker.getEmail()%>"  required>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group col-md-6">
          <input type="text" class="form-control" id="inputEmail4" name="phone" value="<%=seeker.getPhone()%>" placeholder="phone number (e.g., 9876543210)" pattern="[6-9]{1}[0-9]{9}" maxlength="10" required>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group col-md-10">
          
          <input type="text" class="form-control" id="inputEmail4" name="address" placeholder="Address" value="<%=seeker.getJobSeekerLoc()%>" required>
        </div>
      </div>
      <div class="form-group">
        
        <input type="text" class="form-control" id="inputAddress" placeholder="Pincode" name="pincode" value="<%=seeker.getPincode()%>" pattern="[1-9]{1}[0-9]{5}" required>
      </div>
      <div class="form-row">
        <div class="form-group col-md-7">
          
          <input type="text" class="form-control" id="inputCity" name="state" placeholder="State" value="<%=seeker.getState()%>"  required>
        </div>
      </div>
      <h1>Education details</h1>
      <div class="10th">
        <h3>10th</h3>
        <div class="form-row">
          <div class="form-group col-md-7">
            
            <input type="text" class="form-control" id="inputCity" name="schoolname" placeholder="School Name" value="<%=seeker.getSchoolName()%>"  required>
          </div>
          <div class="form-group col-md-7">
            
            <input type="text" class="form-control" id="inputCity" name="yop" placeholder="Year Of Passout" value="<%=seeker.getSchoolYop()%>" pattern="[1-9]{1}[0-9]{3}" required>
          </div>
          <div class="form-group col-md-7">
            
            <input type="text" class="form-control" id="inputCity" name="schoolper" placeholder="Percentage(%)" value="<%=seeker.getSchoolPer()%>" pattern="\d{1,3}(\.\d{1,2})?|100(\.0{1,2})?" required>
          </div> 
        </div>
      </div>
      <h3>12 th/Diploma</h3>
      <div class="form-row">
        <div class="form-group col-md-7">
                    <input type="text" class="form-control" id="inputCity" name="hscCollege" placeholder="12th College Name/Diploma" value="<%=seeker.getHscCollegeName()%>"  required>
        </div>
        <div class="form-group col-md-7">
          
          <input type="text" class="form-control" id="inputCity" name="hscyop" placeholder="Year Of Passout" value="<%=seeker.getHscYop()%>" pattern="[1-9]{1}[0-9]{3}" required>
        </div>
        <div class="form-group col-md-7">
          
          <input type="text" class="form-control" id="inputCity" name="hscper" placeholder="Percentage(%)" value="<%=seeker.getHscPer()%>" pattern="\d{1,3}(\.\d{1,2})?|100(\.0{1,2})?" required>
        </div> 
      </div>
      <h3>Graduation</h3>
      <div class="form-row">
        <div class="form-group col-md-7">
          <input type="text" class="form-control" id="inputCity" name="collegename" placeholder="College Name/University" value="<%=seeker.getCollegeName()%>"  required>
        </div>
        <div class="form-group col-md-7">
          <input type="text" class="form-control" id="inputCity" name="degree" placeholder="Degree" value="<%=seeker.getDegree()%>" required>
        </div>
        <div class="form-group col-md-7">
          <input type="text" class="form-control" id="inputCity" name="branch" placeholder="Branch" value="<%=seeker.getBranch()%>" required>
        </div>
        <div class="form-group col-md-7">
          <!--  <label>Year Of Passout</label> -->
          <input type="text" class="form-control" id="inputCity" name="collegeyop" placeholder="Year of Passout" value="<%=seeker.getCollegeYop()%>" pattern="[1-9]{1}[0-9]{3}" required >
        </div>
        <div class="form-group col-md-7">
         
          <input type="text" class="form-control" id="inputCity" name="collegeper" placeholder="Percentage(%)/CGPA" value="<%=seeker.getCollegePer()%>" pattern="\d{1,3}(\.\d{1,2})?|100(\.0{1,2})?" required>
        </div> 
      </div>
      <h3>Post Graduation</h3>
      <div class="form-row">
        <div class="form-group col-md-7">
          <input type="text" class="form-control" id="inputCity" name="pgcollegename" placeholder="PG College Name/University" value="<%=seeker.getPgCollegeName()%>" >
        </div>
        <div class="form-group col-md-7">
          <input type="text" class="form-control" id="inputCity" name="pgDegree" placeholder="Degree" value="<%=seeker.getPgDegree()%>">
        </div>
        <div class="form-group col-md-7">
          <input type="text" class="form-control" id="inputCity" name="pgbranch" placeholder="Branch" value="<%=seeker.getPgBranch()%>">
        </div>
        <div class="form-group col-md-7">
         
          <input type="text" class="form-control" id="inputCity" name="pgyop" placeholder="Year Of Passout" value="<%=seeker.getPgYOP()%>">
        </div>
        <div class="form-group col-md-7">
         
          <input type="text" class="form-control" id="inputCity" name="pgper" placeholder="Percentage(%)/CGPA" value="<%=seeker.getPgPer()%>" pattern="\d{1,3}(\.\d{1,2})?|100(\.0{1,2})?">
        </div> 
      </div>
      <label>Skills:</label>
      <div>
        
        <input type="text" name="skills" placeholder="Enter Skills" value="<%=seeker.getJobSeekerSkills()%>" required>
      </div>
        <h3>Are u Fresher?</h3>
        <input type="text" class="radio" name="type" value="<%=seeker.getType() %>" >
       
        <h3>Have u done internship?</h3>
        <input class="radio"  type="text" name="internship" value="<%=seeker.getInternship()%>"> 
        
        <div>
          <input type="text" name="companyname" placeholder="Company Name" value="<%=seeker.getCompanyName()%>" >
          <input type="text" name="companyaddress" placeholder="Company Address" value="<%=seeker.getCompanyAddress()%>">
          <input type="number" name="experience" placeholder="Experience" value="<%=seeker.getExperience()%>">
        </div>
        <div>
        <input type="text" name="cv" placeholder="Cv/Resume" value="<%=seeker.getCv()%>" required>
        <input type="text" name="coverletter" placeholder="Cover Letter" value="<%=seeker.getCoverLetter()%>">
      </div>
      <button type="submit" class="save-button">Edit</button>
     
      </div>
      </div>
      
      
    </form>
  </div>



	

</body>
</html>