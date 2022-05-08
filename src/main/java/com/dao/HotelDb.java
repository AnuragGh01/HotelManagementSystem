package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import com.bean.mail;

public class HotelDb {
	private String name;
	private String add;
	private String email;
	private String ph;
	//private String id;
	private String psw;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAdd() {
		return add;
	}
	public void setAdd(String add) {
		this.add = add;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPh() {
		return ph;
	}
	public void setPh(String ph) {
		this.ph = ph;
	}
	public String getPsw() {
		return psw;
	}
	public void setPsw(String psw) {
		this.psw = psw;
	}
	
	public boolean InsertMethod() {
		String url="jdbc:mysql://localhost:3306/hms";
		String uname="root";
		String pass="root";
		
		String sql="insert into hotelreg values('"+name+"','"+add+"','"+email+"','"+ph+"','"+psw+"')";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, pass);
			
			Statement st = con.createStatement();
			int rs = st.executeUpdate(sql);
			

			mail obj=new mail();
			obj.king(name,email);
			
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
