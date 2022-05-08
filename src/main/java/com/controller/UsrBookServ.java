package com.controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.dao.UsrBookDb;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

/**
 * Servlet implementation class UsrBookServ
 */
public class UsrBookServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsrBookServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		
		UsrBookDb ob = new UsrBookDb();
		

		
		String hotnam,sesmail,location,hotmail;
		int nor=0,max=0,price=0,pr_ac=0,pr_nonac=0,noac=0,nononac=0,atac=0,atnonac=0;

		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String dbName = "hms";
		String userId = "root";
		String password = "root";
		try {
		Class.forName(driverName);
		} catch (ClassNotFoundException e) {
		e.printStackTrace();
		}
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		try {
			HttpSession ses = req.getSession();
			hotnam=(String)ses.getAttribute("hotnam");
			sesmail=(String)ses.getAttribute("sesmail");
			location=(String)ses.getAttribute("location");
			hotmail=(String)ses.getAttribute("hotmail");

			
			System.out.println(hotnam);
			System.out.println(sesmail);
			System.out.println(location);

			
			ob.setHotnam(hotnam);
			ob.setSesmail(sesmail);
			ob.setLocation(location);
			ob.setHotmail(hotmail);


			
			
		}catch(Exception e) {
			
		}
		String indate=req.getParameter("arrive_d");
		String outdate=req.getParameter("depart_d");
		//int nop=Integer.parseInt(req.getParameter("nop"));
		String nop=req.getParameter("nop");
		int unop=Integer.parseInt(req.getParameter("nop"));

		String room=req.getParameter("room");
		

		try {                                   
			HttpSession ses = req.getSession();
			ses.setAttribute("indate", indate);    
			ses.setAttribute("outdate",outdate);      
			ses.setAttribute("nop", nop);      
			ses.setAttribute("room", room);      

			
			
		}catch(Exception e) {
			
		}
		
		
	
		ob.setIndate(indate);
		ob.setOutdate(outdate);
		ob.setNop(nop);
		ob.setRoom(room);
		
		 try{ 
		        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
		        statement=connection.createStatement();
		        HttpSession ses = req.getSession();
				String s2=(String)ses.getAttribute("hotmail");
		        System.out.println(s2);
		       String sql ="SELECT * FROM hotelbook where hotemail='" +s2+"' order by id desc limit 1";
		        resultSet = statement.executeQuery(sql);
		        while(resultSet.next()){
		        	pr_ac=Integer.parseInt(resultSet.getString("pr_ac"));
		        	pr_nonac=Integer.parseInt(resultSet.getString("pr_nonac"));
		        	max=Integer.parseInt(resultSet.getString("max"));
		        	noac=Integer.parseInt(resultSet.getString("ac"));
		        	nononac=Integer.parseInt(resultSet.getString("nonac"));
		        	
		        }
		 }
 catch (Exception e) {
e.printStackTrace();
}
		System.out.println(pr_ac+" "+pr_nonac+" "+max+" "+unop+" "+noac+" "+nononac);
		if(room.equals("AC")) {
			float n=(float)unop/(float)max;
			System.out.println(n);
		nor=(int) Math.ceil(n);
		atac=noac-nor;
			price=nor*pr_ac;
		}
		if(room.equals("Non-AC")) {
		 float n=(float)unop/(float)max;
		nor=(int) Math.ceil(n);
		atnonac=nononac-nor;
			price=nor*pr_nonac;
		}
		//
		System.out.println(nor+" "+price+" "+atac+" "+atnonac);
		//
		try{ 
	        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	        statement=connection.createStatement();
	        HttpSession ses = req.getSession();
			String s2=(String)ses.getAttribute("hotmail");
	        System.out.println(s2);
	        String sql=null;
	        if(atnonac==0) {
	        sql ="update hotelbook set ac='"+atac+"' where hotemail='" +s2+"'";
	        }else
	        {
	        	sql ="update hotelbook set nonac='"+atnonac+"' where hotemail='" +s2+"'";
	        }
	        int rs = statement.executeUpdate(sql);
	        
	 }
catch (Exception e) {
e.printStackTrace();
}
		
		try {                                   
			HttpSession ses = req.getSession();
			ses.setAttribute("nor", nor);
			ses.setAttribute("price", price);
			
			
		}catch(Exception e) {
			
		}
		boolean result=ob.InsertMethod();
		
		if(result==true) {
			res.sendRedirect("payment.jsp");
			
		}else {
			pw.println("failed");
		}




		
	}

}
