package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.dao.CustDb;
import com.dao.HotelDb;

/**
 * Servlet implementation class HotelRegServ
 */
public class HotelRegServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotelRegServ() {
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
		String add=req.getParameter("add");
		String email=req.getParameter("email");
		String ph=req.getParameter("ph");
		//String id=req.getParameter("myfile");
		String psw=req.getParameter("psw");
		
		HotelDb ob = new HotelDb();
		
		ob.setName(name);
		ob.setAdd(add);
		ob.setEmail(email);
		ob.setPh(ph);
		//ob.setName(id);
		ob.setPsw(psw);
		
		boolean result=ob.InsertMethod();
		
		

		if(result==true) {
//			pw.println("success");
			res.sendRedirect("login.html");
		}else {
			pw.println("failed");
		}
		
	}

}
