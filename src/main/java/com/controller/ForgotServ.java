package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.bean.otpmail;

/**
 * Servlet implementation class ForgotServ
 */
public class ForgotServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("text/html");
		PrintWriter pw =res.getWriter();
		String email=req.getParameter("email");
		
		try {                                   //httpsession should be use within try catch coz their will be a chance of throwing an exception
			HttpSession ses = req.getSession();//establishing a session
			ses.setAttribute("em", email);       //setAttribute()->using it we can add a value by providing it by a name in the server side
			//pw.println("<form method=post action=s3><input type=submit value=submit></form>");
			
			
		}catch(Exception e) {
			
		}
		otpmail obj=new otpmail();
		obj.king(email);
		res.sendRedirect("otp.html");

	}

}
