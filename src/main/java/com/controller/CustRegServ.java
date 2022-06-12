package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.dao.CustDb;

/**
 * Servlet implementation class CustRegServ
 */
public class CustRegServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustRegServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String ph=req.getParameter("ph");
		String add=req.getParameter("add");
		//String id=req.getParameter("myfile");
		String psw=req.getParameter("psw");
		
		
		CustDb ob = new CustDb();
		
		ob.setName(name);
		ob.setEmail(email);
		ob.setPh(ph);
		ob.setAdd(add);
		//ob.setName(id);
		ob.setPsw(psw);
		
		boolean result=ob.InsertMethod();
		
		
		if(result==true) {
//			pw.println("success");
			res.sendRedirect("login.html");
		}else {
			res.sendRedirect("updatedsignup.html");
		}
		


		
	}

}
