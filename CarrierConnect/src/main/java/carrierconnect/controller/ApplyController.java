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
import carrierconnect.dto.ApplyJob;
import carrierconnect.dto.GenerateRequirement;
import carrierconnect.dto.JobSeeker;

import java.io.IOException;
@WebServlet("/applyjob")
public class ApplyController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	HttpSession session = req.getSession();
		JobSeeker seeker = (JobSeeker) session.getAttribute("jobseeker");
		session.setAttribute("jobseeker", seeker);
		
		HttpSession session2 = req.getSession();
		GenerateRequirement requirement = (GenerateRequirement) session.getAttribute("req");

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String relocate = req.getParameter("relocate");
		String expectedCtc = req.getParameter("ctc");
		String experience = req.getParameter("experience");
		String companyName = req.getParameter("companyname");
		String currentCtc = req.getParameter("currentctc");
		String noticePeriod = req.getParameter("noticeperiod");
		int id=requirement.getJobId();
		 

		ApplyJob job = new ApplyJob();
		job.setName(name);
		job.setEmail(email);
		job.setRelocate(relocate);
		job.setCtc(expectedCtc);
		job.setExperience(experience);
		job.setCompanyName(companyName);
		job.setCurrentCTC(currentCtc);
		job.setNoticePeriod(noticePeriod);

		JjDao dao = new JjDao();
		GenerateRequirement requirement2=dao.findRequirement(id);
		job.setRequirement(requirement2);
		dao.saveApplyJob(job);

		List<ApplyJob> list = seeker.getApply();
		list.add(job);
				
		dao.updateSessionSeeker(seeker);
		
		
		List<JobSeeker> listSeeker=requirement2.getJobSeekers();
		listSeeker.add(seeker);	
		dao.updateSessionRequirement(requirement2);
		req.getRequestDispatcher("JobSeekerHomepage.jsp").forward(req, resp);
		req.setAttribute("apply", "Applied");

	
		
		}
	

}