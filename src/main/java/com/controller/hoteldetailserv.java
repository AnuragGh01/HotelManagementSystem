package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.dao.hoteldetaildb;

/**
 * Servlet implementation class hoteldetailserv
 */
public class hoteldetailserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hoteldetailserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		String s1 = null;
		

		try {
			HttpSession ses = req.getSession();
			s1=(String)ses.getAttribute("sesmail");
			
			
		}catch(Exception e) {
			
		}
		
		String ac=req.getParameter("ac");
		String nonac=req.getParameter("nonac");
		String pr_ac=req.getParameter("pr_ac");
		String pr_nonac=req.getParameter("pr_nonac");
		String max=req.getParameter("max");
		
		hoteldetaildb ob = new hoteldetaildb();
		
		ob.setAc(ac);
		ob.setNonac(nonac);
		ob.setPr_ac(pr_ac);
		ob.setPr_nonac(pr_nonac);
		ob.setMax(max);
		
		boolean result=ob.InsertMethod(s1);
		
		if(result==true) {
//			pw.println("success");
			res.sendRedirect("hotelinterface.jsp");
		}else {
			pw.println("failed");
		}


	}

}
