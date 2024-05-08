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


@WebServlet("/updateUser")
public class UpdateUser extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
		 JjDao dao = new JjDao() ;
		HttpSession session=req.getSession();
		   //User sessionUser=(User)req.getAttribute("user");
		Recruiter recruiter = (Recruiter) req.getAttribute("recruiter") ;
//	int id = Integer.parseInt(req.getParameter("id")) ;
User sessionUser=(User) session.getAttribute("user");
		String name = req.getParameter("name") ;
		
		String email = req.getParameter("email") ;
		long phone = Long.parseLong(req.getParameter("phone")) ;
		String address = req.getParameter("address") ;
	
		
		User user = new User() ;
		user.setName(name);
		
		user.setEmail(email);
		user.setPhone(phone);
		user.setAddress(address);
		
		
		
		User user3= dao.updateUser(sessionUser.getId() ,user);
		 
			
			session.setAttribute("user", user3);
			req.setAttribute("message","Update Successfull");
			if (user.getType().equalsIgnoreCase("recruiter")) {
				req.getRequestDispatcher("RecuriterProfile.jsp").forward(req, resp);
			} else {
				req.getRequestDispatcher("JobSeekerProfile.jsp").forward(req, resp);
			}
			 
	}
		catch(Exception e)
		{
			req.setAttribute("message", "Failed to update the data! please try again");
			req.getRequestDispatcher("UserUpdate.jsp").forward(req, resp);
		}
	}
}
