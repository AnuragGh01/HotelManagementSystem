package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import com.bean.mail;

public class UsrBookDb {
	
	private String hotnam;
	private String location;
	private String sesmail;
	private String indate;
	private String outdate;
	private String nop;
	private String room;
	private String hotmail;
	
	
	
	
	public String getHotnam() {
		return hotnam;
	}




	public void setHotnam(String hotnam) {
		this.hotnam = hotnam;
	}




	public String getLocation() {
		return location;
	}




	public void setLocation(String location) {
		this.location = location;
	}




	public String getSesmail() {
		return sesmail;
	}




	public void setSesmail(String sesmail) {
		this.sesmail = sesmail;
	}




	public String getIndate() {
		return indate;
	}




	public void setIndate(String indate) {
		this.indate = indate;
	}




	public String getOutdate() {
		return outdate;
	}




	public void setOutdate(String outdate) {
		this.outdate = outdate;
	}




	public String getNop() {
		return nop;
	}




	public void setNop(String nop) {
		this.nop = nop;
	}




	public String getRoom() {
		return room;
	}




	public void setRoom(String room) {
		this.room = room;
	}
	
	
	public String getHotmail() {
		return hotmail;
	}




	public void setHotmail(String hotmail) {
		this.hotmail = hotmail;
	}




	public boolean InsertMethod() {
		String url="jdbc:mysql://localhost:3306/hms";
		String uname="root";
		String pass="root";
		
		String sql="insert into usrbook values('"+hotnam+"','"+location+"','"+sesmail+"','"+indate+"','"+outdate+"','"+nop+"','"+room+"','"+hotmail+"')";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, pass);
			
			Statement st = con.createStatement();
			int rs = st.executeUpdate(sql);
			
			
			if(rs>0) {
				return true;
			}else {
				return false;
			}
		}catch(Exception e) {
			
		}
		
		
		
		return false;
		
		
		
		
	}
	
	

}
