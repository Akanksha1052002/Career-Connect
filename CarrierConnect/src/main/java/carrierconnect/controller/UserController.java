package carrierconnect.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import carrierconnect.dao.JjDao;
import carrierconnect.dto.User;




@WebServlet("/signup")
public class UserController extends HttpServlet{
	long phoneNo ;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
		String name = req.getParameter("name") ;
		String gender = req.getParameter("gender") ;
		String email = req.getParameter("email") ;
		String phone =req.getParameter("phone");
		String address = req.getParameter("address") ;
		String type = req.getParameter("type") ;
		String password = req.getParameter("password") ;
		String confirmPassword = req.getParameter("confimpassword") ;
		
		User user = new User() ;
		user.setName(name);
		user.setGender(gender);
		user.setEmail(email);
		if (phone.length()==10) {
			for (int i = 0; i < phone.length(); i++) {
				if (phone.charAt(i)>=48 && phone.charAt(i)<=57 && phone.charAt(0)>='6' && phone.charAt(0)<='9') {
					phoneNo = Long.parseLong(phone) ;
				}
				else {
					req.setAttribute("message", "Please Enter Phone number in proper Number Format");
					req.getRequestDispatcher("SignUpJSP.jsp").forward(req, resp);
				}
			}
		} else {
			req.setAttribute("message", "Please Enter valid mobile number");
			req.getRequestDispatcher("SignUpJSP.jsp").forward(req, resp);
		}
		user.setPhone(phoneNo);
		user.setAddress(address);
		user.setType(type);
		user.setPassword(password);
		 JjDao dao = new JjDao() ; 
		
		if (user.getPassword().equals(confirmPassword)) {
			
			HttpSession session = req.getSession() ;
			
			req.setAttribute("message","Signup Successfull");
			if (user.getType().equalsIgnoreCase("recruiter")) {
				dao.signupUser(user); 
				session.setAttribute("use", user);
				req.getRequestDispatcher("recuriter.jsp").forward(req, resp); 
			} else if(user.getType().equalsIgnoreCase("jobseeker")){
				dao.signupUser(user); 
				session.setAttribute("use", user);
				req.getRequestDispatcher("JobSeeker.jsp").forward(req, resp);
			}
			else {
				req.setAttribute("message","Please Enter valid Data");
				req.getRequestDispatcher("SignUpJSP.jsp").forward(req, resp);
				
			}
			
			
			
		} else {
			req.setAttribute("message", "Please Enter Valid Password");
			req.getRequestDispatcher("SignUpJSP.jsp").forward(req, resp); 
		}
		}
		catch(Exception e)
		{
			req.setAttribute("message", "Failed to insert the data! please try again");
			req.getRequestDispatcher("SignUpJSP.jsp").forward(req, resp);
		}
	}

}

