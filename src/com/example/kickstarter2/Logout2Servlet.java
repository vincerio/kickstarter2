package com.example.kickstarter2;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import java.io.IOException;




public class Logout2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
                throws IOException {


		HttpSession session = req.getSession();
		session.invalidate();
		resp.sendRedirect("index.jsp");
    }
}



