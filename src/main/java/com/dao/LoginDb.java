package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginDb {
	
	private String email;
	private String psw;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPsw() {
		return psw;
	}
	public void setPsw(String psw) {
		this.psw = psw;
	}
	
	
	public int CheckMethod() {
		String url="jdbc:mysql://localhost:3306/hms";
		String uname="root";
		String pass="root";
		
		//String sql="insert into usrreg values('"+name+"','"+email+"','"+ph+"','"+add+"','"+psw+"')";
		String sql="select * from usrreg";
		String sql2="select * from hotelreg";
		String sql3="select * from admin";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, pass);
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				if(email.equals(rs.getString(2))&&psw.equals(rs.getString(5))) {
					return 1;
				}
			
			}
		}catch(Exception e) {
			
		}
		

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, pass);
			
			Statement st = con.createStatement();
			ResultSet rl = st.executeQuery(sql2);
			
			while(rl.next()) {
				if(email.equals(rl.getString(3))&&psw.equals(rl.getString(5))) {
					return 2;
				}
			
			}
		}catch(Exception e) {
			
		}

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, pass);
			
			Statement st = con.createStatement();
			ResultSet ra = st.executeQuery(sql3);
			
			while(ra.next()) {
				if(email.equals(ra.getString(2))&&psw.equals(ra.getString(5))) {
					return 3;
				}
			
			}
		}catch(Exception e) {
			
		}
		
		
		
		return 4;
		
		
		
		
	}

}
