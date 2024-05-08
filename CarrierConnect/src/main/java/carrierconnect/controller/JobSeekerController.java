package carrierconnect.controller;


import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import carrierconnect.dao.JjDao;
import carrierconnect.dto.JobSeeker;
import carrierconnect.dto.User;


@WebServlet("/jobseekerinsert")
public class JobSeekerController extends HttpServlet {
	int pincode, schoolYop, hscYop, collegeYop, pgYop, noOfExperience;
	double schoolPer, hscPer, pgPer;
	long phone;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
		String name = req.getParameter("name");
		String email = req.getParameter("email");

		String DOB = req.getParameter("dob");
		String address = req.getParameter("address");
		String state = req.getParameter("state");

		String schoolName = req.getParameter("schoolname");

		String hscCollege = req.getParameter("hscCollege");
		String pgDegree=req.getParameter("pgdegree");
		String pgBranch=req.getParameter("pgbranch");
		String degree = req.getParameter("degree");
		String branch = req.getParameter("branch");
		String collegeName = req.getParameter("collegename");

		Double collegePer = Double.parseDouble(req.getParameter("collegeper"));
		String pgCollegeName = req.getParameter("pgcollegename");

		String skills = req.getParameter("skills");
		String type = req.getParameter("type");
		String internship = req.getParameter("internship");
		String companyName = req.getParameter("companyname");
		String companyAddress = req.getParameter("companyaddress");

		String cv = req.getParameter("cv");
		String coverLetter = req.getParameter("coverletter");
		if (req.getParameter("pincode") != null) {
			pincode = Integer.parseInt(req.getParameter("pincode"));
		}
		if (req.getParameter("yop") != null) {
			schoolYop = Integer.parseInt(req.getParameter("yop"));
		}
		if (req.getParameter("schoolper") != null) {
			schoolPer = Double.parseDouble(req.getParameter("schoolper"));
		}
		if (req.getParameter("hscyop") != null) {
			hscYop = Integer.parseInt(req.getParameter("hscyop"));
		}
		if (req.getParameter("collegeyop") != null) {
			collegeYop = Integer.parseInt(req.getParameter("collegeyop"));
		}
		try{if (req.getParameter("pgyop") != null) {
			pgYop = Integer.parseInt(req.getParameter("pgyop"));
		}
		}
		catch(NumberFormatException e)
		{
			pgYop=0;
		}
		try{if (req.getParameter("experience") != null) {
			noOfExperience = Integer.parseInt(req.getParameter("experience"));
		}}
		catch(NumberFormatException e)
		{
			noOfExperience=0;
		}
		
		if (req.getParameter("hscper") != null) {
			hscPer = Double.parseDouble(req.getParameter("hscper"));
		}

		try{if (req.getParameter("pgper") != null) {
			pgPer = Double.parseDouble(req.getParameter("pgper"));
		}}
		catch(NumberFormatException e)
		{
			pgPer=0;
		}
		if (req.getParameter("phone") != null) {
			phone = Long.parseLong(req.getParameter("phone"));
		}

		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("use");

		JobSeeker seeker = new JobSeeker();
		seeker.setName(name);
		seeker.setEmail(email);
		seeker.setPhone(phone);
		seeker.setDob(DOB);
		seeker.setJobSeekerLoc(address);
		seeker.setState(state);
		seeker.setPincode(pincode);
		seeker.setSchoolName(schoolName);
		seeker.setSchoolYop(schoolYop);
		seeker.setSchoolPer(schoolPer);
		seeker.setHscCollegeName(hscCollege);
		seeker.setHscYop(hscYop);
		seeker.setHscPer(hscPer);
		seeker.setDegree(degree);
		seeker.setBranch(branch);
		seeker.setCollegeName(collegeName);
		seeker.setCollegeYop(collegeYop);
		seeker.setCollegePer(collegePer);
		seeker.setPgCollegeName(pgCollegeName);
		seeker.setPgYOP(pgYop);
		seeker.setPgPer(pgPer);
		seeker.setJobSeekerSkills(skills);
		seeker.setType(type);
		seeker.setInternship(internship);
		seeker.setCompanyName(companyName);
		seeker.setCompanyAddress(companyAddress);
		seeker.setExperience(noOfExperience);
		seeker.setCv(cv);
		seeker.setCoverLetter(coverLetter);
		seeker.setPgDegree(pgDegree);
		seeker.setPgBranch(pgBranch);
		seeker.setUser(user);
//		session.setAttribute("use", user);

		JjDao dao = new JjDao() ;

		dao.jobSeekerInsert(seeker);

		req.setAttribute("msg", "jobseeker insert");
		req.getRequestDispatcher("SignIn.jsp").forward(req, resp);
         
         
	}
		catch(Exception e)
		{
			req.setAttribute("message", "Failed to Insert the data! Please try again");
			req.getRequestDispatcher("JobSeeker.jsp").forward(req, resp);
		}
	}
}