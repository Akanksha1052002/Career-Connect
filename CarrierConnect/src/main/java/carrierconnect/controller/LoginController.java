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
import carrierconnect.dto.Recruiter;
import carrierconnect.dto.User;

@WebServlet("/login")
public class LoginController extends HttpServlet{
	
   @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	   String email = req.getParameter("email") ;
	   String password = req.getParameter("password") ;
	   
		 JjDao dao = new JjDao() ;
	   
	  try {
		  long phone = Long.parseLong(email) ;
		   User user = dao.phoneLogin(phone) ;
		   if (user!=null) {
			if (user.getPassword().equals(password)) {
				req.setAttribute("message", "Login Successfull");
				Recruiter recruiter =dao.recSession(user); 
				HttpSession session2 = req.getSession() ;
//				Recruiter recruiter = (Recruiter) session2.getAttribute("recruiter") ; 
				session2.setAttribute("recruiter", recruiter); 
				HttpSession session3 = req.getSession();
				JobSeeker seeker = dao.recSession2(user);
				session2.setAttribute("jobseeker", seeker);
				
				
				if (user.getType().equalsIgnoreCase("recruiter")) {
					req.getRequestDispatcher("home.jsp").forward(req, resp); 
				} else {
					req.getRequestDispatcher("JobSeekerHomepage.jsp").forward(req, resp);
				}
				
				
				HttpSession session = req.getSession() ;
				session.setAttribute("user", user);
			}
			else {
				req.setAttribute("message", "Login Failed");
				req.getRequestDispatcher("SignIn.jsp").forward(req, resp);
			}
		} else {
				req.setAttribute("message", "User With Given Phone Number Not Found");
				req.getRequestDispatcher("SignUpJSP.jsp").forward(req, resp);
		}
		  
	  }
	  catch (Exception e) {
		
		  User user = dao.emailLogin(email) ;
		  if (user!=null) {
			
			  if (user.getPassword().equals(password)) {
				req.setAttribute("message", "Login Successfull");
				
				HttpSession session2 = req.getSession() ;
//				Recruiter recruiter = (Recruiter) session2.getAttribute("recruiter") ; 
				
				//HttpSession session3 = req.getSession();
				HttpSession session = req.getSession() ;
				session.setAttribute("user", user);
				
				if (user.getType().equalsIgnoreCase("recruiter")){
					Recruiter recruiter =dao.recSession(user);
					session2.setAttribute("recruiter", recruiter); 	
					req.getRequestDispatcher("home.jsp").forward(req, resp); 
					
				} else {
					JobSeeker seeker = dao.recSession2(user);
					session2.setAttribute("jobseeker", seeker);
					req.getRequestDispatcher("JobSeekerHomepage.jsp"
							+ "").forward(req, resp);
				}
				
			
			} else {
				req.setAttribute("message", "Login Failed");
				req.getRequestDispatcher("SignIn.jsp").forward(req, resp);
			}
		} else {
			req.setAttribute("message", "User With Given Phone Number Not Found");
			req.getRequestDispatcher("SignUpJSP.jsp").forward(req, resp);
		}
	}
	
	
}

}