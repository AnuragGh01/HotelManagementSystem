package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.dao.CustDb;
import com.dao.LoginDb;

/**
 * Servlet implementation class LoginServ
 */
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		
		String email=req.getParameter("email");
		String psw=req.getParameter("psw");
		
		try {                                   
			HttpSession ses = req.getSession();
			ses.setAttribute("sesmail", email);      
				
		}catch(Exception e) {
			
		}
		
		LoginDb ob = new LoginDb();
		
		ob.setEmail(email);
		ob.setPsw(psw);
		
	 int result=ob.CheckMethod();
		

		if(result==1) {
			res.sendRedirect("userinterface.jsp");
			
		}else if(result==2){
			//pw.println("failed");
			res.sendRedirect("hotelinterface.jsp");

		}else if(result==3) {
			res.sendRedirect("adminpage.jsp");
		}
		else {
			res.sendRedirect("updatedlogin.jsp");
		}
	}

}
