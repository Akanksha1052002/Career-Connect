package carrierconnect.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import carrierconnect.dao.JjDao;
import carrierconnect.dto.GenerateRequirement;
import carrierconnect.dto.Recruiter;
import carrierconnect.dto.User;





@WebServlet("/generaterequirement")
public class GenerateRequirementController extends HttpServlet{ 
	
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
		Recruiter recruiter = (Recruiter) req.getAttribute("recruiter") ;
		JjDao dao = new JjDao() ;
		int rid= Integer.parseInt(req.getParameter("rid"));
		Recruiter recruiter2=dao.findRecruiter(rid);
		HttpSession session2 = req.getSession() ;
		
		session2.setAttribute("recruiter", recruiter2);
		
		//System.out.println(recruiter2);
		
		int id = Integer.parseInt(req.getParameter("id")) ;
		String companyName = req.getParameter("name") ;
		String designation = req.getParameter("designation") ;
		String degree = req.getParameter("degree") ;
		String branch = req.getParameter("branch") ;
		String yop = req.getParameter("yop") ;
		String ctc = req.getParameter("ctc") ;
		String requiredSkills = req.getParameter("requiredSkills") ;
		int noOfEmp = Integer.parseInt(req.getParameter("noOfEmp")) ;
		String experience = req.getParameter("experience") ;
		String lastDateOfApply = req.getParameter("lastDateOfApply") ;
		String jobLoc = req.getParameter("jobLoc") ;
		String jobDescription =req.getParameter("jobDescription") ;
		String rolesAndResponsibilities = req.getParameter("rolesAndResponsibilities") ;
		
		GenerateRequirement generateRequirement = new GenerateRequirement() ;
		generateRequirement.setJobId(id);
		generateRequirement.setCompanyName(companyName);
		generateRequirement.setDesignation(designation);
		generateRequirement.setDegree(degree);
		generateRequirement.setBranch(branch);
		generateRequirement.setYop(yop);
		generateRequirement.setCtc(ctc);
		generateRequirement.setRequiredSkills(requiredSkills);
		generateRequirement.setNoOfEmp(noOfEmp);
		generateRequirement.setExperience(experience);
		generateRequirement.setLastDateOfApply(lastDateOfApply);
		generateRequirement.setJobLoc(jobLoc);
		generateRequirement.setJobDescription(jobDescription);
		generateRequirement.setRolesAndResponsibilities(rolesAndResponsibilities);
		List<GenerateRequirement> list=recruiter2.getGenerateRequirements();
		list.add(generateRequirement);		
		 
		dao.createRequirement(generateRequirement);
		req.setAttribute("message", "Requirement Generate Successfully");
		HttpSession session = req.getSession() ;
		User user  = (User) session.getAttribute("user") ; 
		session.setAttribute("user", user);
		
		
		
		req.getRequestDispatcher("home.jsp").forward(req, resp);
		}
		
		catch(Exception e)
		{
			req.setAttribute("message", "Failed to Genrate Requirement");
			req.getRequestDispatcher("home.jsp").forward(req, resp);
			
		}
		
	}

}
