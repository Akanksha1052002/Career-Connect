package carrierconnect.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrierconnect.dao.JjDao;
import carrierconnect.dto.User;

@WebServlet("/forgetpassword")
public class ForgetPasswordController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("email") ;
		String password = req.getParameter("password") ;
		String confirmPassword = req.getParameter("confirmPassword") ;
		
		JjDao dao = new JjDao() ;
		 User user =  dao.emailLogin(email) ;
		 if (user!=null) {
			if (password.equals(confirmPassword)) {
				user.setPassword(password);
				dao.signupUser(user);
 				req.setAttribute("message", "Password Updated Successfully");
				req.getRequestDispatcher("SignIn.jsp").forward(req, resp);
			} else {
				req.setAttribute("message", "Please Enter Valid Password");
				req.getRequestDispatcher("PasswordForget.jsp").forward(req, resp);
			}
		} else {
				req.setAttribute("message", "Email Id Not Found Please Register");
				req.getRequestDispatcher("SignUpJSP.jsp").forward(req, resp);
		}
		
	}

	
	
	}
	


