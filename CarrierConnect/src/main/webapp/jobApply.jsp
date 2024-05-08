<%@page import="carrierconnect.dto.JobSeeker"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%JobSeeker seeker=(JobSeeker)session.getAttribute("jobseeker"); %>

<form action="applyjob" method=post>
		<input type="text" name="name" value="<%=seeker.getName() %>" class="input"><br>
		<br>
		<input type="email" name="email" value="<%=seeker.getEmail() %>" class="input"><br>
		<br>
		<br>Are u ready to relocate <input type="radio" name="relocate" value="yes">Yes
		<input type="radio" name="relocate" value="no">No <Br>
		<br> <input type="text" name="ctc" placeholder="expected ctc"
			class="input"><br> <br>
		<br>do u have experience: <input type="radio" name="experience" value="yes">Yes
		
			<input type="radio" name="experience" value="no">No
			<br> <br>
		<br> <input type="text" name="companyname" placeholder="Enter company name"
			class="input"><br> <br>
		<br><Br>
		<br> <input type="text" placeholder="current ctc"
			name="currentctc" id="create_password" class="input"><br> <br>
		<br> <input type="text" name="noticeperiod"
			placeholder="notice period" id="confirmpass" class="input"><br><br>

		<button class="btn3">Apply</button>
	</form>
</body>
</html>