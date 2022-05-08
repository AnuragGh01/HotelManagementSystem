package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.bean.pdfgenerate;
import com.bean.pdfmail;

/**
 * Servlet implementation class pdserv
 */
public class pdserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pdserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
System.out.println("welcome to pdserv");
		pdfgenerate ob=new pdfgenerate();
		pdfmail obj=new pdfmail();
		System.out.println("hi");
		try {
			System.out.println("hi try");
			HttpSession ses = req.getSession();
			String s1=(String)ses.getAttribute("hotnam");
			System.out.println(s1);
			String s2=(String)ses.getAttribute("sesmail");
			System.out.println(s2);
			String s3=(String)ses.getAttribute("location");
			System.out.println(s3);
			String s4=(String)ses.getAttribute("indate");
			System.out.println(s4);
			String s5=(String)ses.getAttribute("outdate");
			System.out.println(s5);
			String s6=(String)ses.getAttribute("nop");
			System.out.println(s6);
			String s7=(String)ses.getAttribute("room");
			System.out.println(s7);
			String mail=(String)ses.getAttribute("sesmail");
			System.out.println(mail);
			System.out.println("pol");
			int s8=(Integer)ses.getAttribute("nor");
			int s9=(Integer)ses.getAttribute("price");
			ob.king(s1, s2, s3, s4, s5, s6, s7,s8,s9);
			obj.pdf(mail);
		
			
			
		}catch(Exception e) {
			
		}


	System.out.println("hiend");
	
//	
	res.sendRedirect("paysuccess.jsp");
	
	}

}
