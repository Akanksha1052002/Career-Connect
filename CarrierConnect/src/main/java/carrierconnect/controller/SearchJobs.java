package carrierconnect.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchJob")
public class SearchJobs  extends HttpServlet{
	   @Override
	   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   	
		   String keyword=(String) req.getAttribute("keyword");
		   req.setAttribute("keyword", keyword);
	   	 
	   	 req.getRequestDispatcher("SearchJob.jsp").forward(req, resp);	   		
	   }
}