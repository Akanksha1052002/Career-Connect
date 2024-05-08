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



@WebServlet("/updateGeneraterequirement")
public class UpdateGenrateRequirement extends HttpServlet {


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {Recruiter recruiter = (Recruiter) req.getAttribute("recruiter") ;
		JjDao dao = new JjDao() ;
		int rid= Integer.parseInt(req.getParameter("rid"));
		Recruiter recruiter2=dao.findRecruiter(rid);
		HttpSession session2 = req.getSession() ;
		HttpSession session3=req.getSession();
		GenerateRequirement requirement=(GenerateRequirement) session3.getAttribute("req");
		session2.setAttribute("recruiter", recruiter2);
		
		//System.out.println(recruiter2);
		
		int id = Integer.parseInt(req.getParameter("id")) ;
		int jId = Integer.parseInt(req.getParameter("jid")) ;
		String companyName = req.getParameter("name") ;
		String designation = req.getParameter("designation") ;
		String degree = req.getParameter("degree") ;
		String yop = req.getParameter("yop");
		String ctc = req.getParameter("ctc") ;
		String branch=req.getParameter("branch");
		String requiredSkills = req.getParameter("requiredSkills") ;
		int noOfEmp = Integer.parseInt(req.getParameter("noOfEmp")) ;
		String experience = req.getParameter("experience") ;
		String lastDateOfApply = req.getParameter("lastDateOfApply") ;
		String jobLoc = req.getParameter("jobLoc") ;
		String jobDescription =req.getParameter("jobDescription") ;
		String rolesAndResponsibilities = req.getParameter("rolesAndResponsibilities") ;
		
		GenerateRequirement generateRequirement = new GenerateRequirement() ;
		generateRequirement.setId(id);
		generateRequirement.setJobId(jId);
		generateRequirement.setCompanyName(companyName);
		generateRequirement.setDesignation(designation);
		generateRequirement.setDegree(degree);
		generateRequirement.setYop(yop);
		generateRequirement.setCtc(ctc);
		generateRequirement.setBranch(branch);
		generateRequirement.setRequiredSkills(requiredSkills);
		generateRequirement.setNoOfEmp(noOfEmp);
		generateRequirement.setExperience(experience);
		generateRequirement.setLastDateOfApply(lastDateOfApply);
		generateRequirement.setJobLoc(jobLoc);
		generateRequirement.setJobDescription(jobDescription);
		generateRequirement.setRolesAndResponsibilities(rolesAndResponsibilities);
		
		GenerateRequirement requirement2= dao.updateGenateRequirement(requirement.getId(), generateRequirement);
		req.setAttribute("message", "Requirement Generate Successfully");
		HttpSession session = req.getSession() ;
		User user  = (User) session.getAttribute("user") ; 
		session.setAttribute("user", user);
		session3.setAttribute("req", requirement2);
		
		
		req.getRequestDispatcher("home.jsp").forward(req, resp);
		}
		
		catch(Exception e)
		{
			req.setAttribute("message", "Failed to update the data! please try again");
			req.getRequestDispatcher("UpdateGenerateRequirement.jsp").forward(req, resp);
		}
	}

}
