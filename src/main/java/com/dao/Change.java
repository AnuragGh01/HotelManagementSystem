package com.dao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Servlet implementation class Change
 */
public class Change extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Change() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {


		String url="jdbc:mysql://localhost:3306/hms";
		String uname="root";
		String pass="root";
		
		res.setContentType("text/html");
		PrintWriter pw=res.getWriter();
		
		String psw=req.getParameter("psw");
		
		try {
			HttpSession ses = req.getSession();
			String s1=(String)ses.getAttribute("em");
			
			String query1="UPDATE usrreg SET pass='"+psw+"'WHERE email='"+s1+"'";
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, pass);
			
			Statement st = con.createStatement();
			int rs = st.executeUpdate(query1);
			if(rs>0) {
				res.sendRedirect("login.html");	
			}else {
//				pw.println(s1);
			
			String query2="UPDATE hotelreg SET pass='"+psw+"'WHERE email='"+s1+"'";
			Statement st1 = con.createStatement();
			int rs1 = st.executeUpdate(query2);
			if(rs1>0) {
				res.sendRedirect("login.html");	
			}	

			}
			
		}catch(Exception e) {
			
		}
		
		
		
	}

}
