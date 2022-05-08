package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.bean.otpmail;
import com.bean.random;

/**
 * Servlet implementation class OtpEmailServ
 */
public class OtpEmailServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OtpEmailServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		

		res.setContentType("text/html");
		PrintWriter pw =res.getWriter();
		String otp=req.getParameter("otp");
		random obj=new random();
		String ran=obj.send();
		System.out.println(ran);
		
		if(ran.equals(otp)) {
			res.sendRedirect("enternewpassword.html");
		}
		else {
			res.sendRedirect("updatedotp.html");
		}
		
	}

}
