package carrierconnect.controller;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import carrierconnect.dao.JjDao;
import carrierconnect.dto.Recruiter;
import carrierconnect.dto.User;




@WebServlet("/updateRecuriter")
public class UpdateRecuriter extends HttpServlet {
	long phone ;int size;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
		HttpSession session = req.getSession() ;
		User user = (User) session.getAttribute("user") ;
		
		HttpSession session2 = req.getSession() ;
		Recruiter sesionRecruiter= (Recruiter) session2.getAttribute("recruiter");
		//int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name") ;
		String website = req.getParameter("website") ;
		 JjDao dao = new JjDao() ;
		
		try{if(req.getParameter("phone")!=null)
		{
			 phone = Long.parseLong(req.getParameter("phone")) ;	
		}}
		catch(NumberFormatException e)
		{
			phone=0;
		}
		
		
		String email = req.getParameter("email") ;
		
		try{if(req.getParameter("size")!=null)
		{
			size = Integer.parseInt(req.getParameter("size")) ;
		}}
		catch(NumberFormatException e)
		{
			size=0;
		}
		
		String address = req.getParameter("address") ;
		String country = req.getParameter("country") ;
		String description = req.getParameter("description") ; 
		String date = req.getParameter("date") ;
		
		
		Recruiter recruiter = new Recruiter() ;
		recruiter.setCompanyId(sesionRecruiter.getCompanyId());
		recruiter.setCompanyName(name);
		recruiter.setCompanyWebsite(website);
		recruiter.setCompanyPhone(phone);
		recruiter.setCompanyEmail(email);
		recruiter.setCompanySize(size);
		recruiter.setCompanyAddress(address);
		recruiter.setCompanyCountry(country);
		recruiter.setCompanyDescription(description);
		recruiter.setCestablishedDate(date);
	
		dao.updateRecruiter(sesionRecruiter.getRId(), recruiter);
		
		

		 req.setAttribute("message", "Data Updated Successfully");
		 session.setAttribute("user", user);
		 session2.setAttribute("recruiter", recruiter);
		 req.getRequestDispatcher("RecuriterProfile.jsp").forward(req, resp);
		 
		}
		catch(Exception e)
		{
			req.setAttribute("message", "Failed to update the data! please try again");
			req.getRequestDispatcher("RecuriterUpdate.jsp").forward(req, resp);
		}
	}

}
