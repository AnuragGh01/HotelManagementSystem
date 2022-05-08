package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import com.bean.mail;

public class hoteldetaildb {

	private String ac;
	private String nonac;
	private String pr_ac;
	private String pr_nonac;
	private String max;
	public String getAc() {
		return ac;
	}
	public void setAc(String ac) {
		this.ac = ac;
	}
	public String getNonac() {
		return nonac;
	}
	public void setNonac(String nonac) {
		this.nonac = nonac;
	}
	public String getPr_ac() {
		return pr_ac;
	}
	public void setPr_ac(String pr_ac) {
		this.pr_ac = pr_ac;
	}
	public String getPr_nonac() {
		return pr_nonac;
	}
	public void setPr_nonac(String pr_nonac) {
		this.pr_nonac = pr_nonac;
	}//
	public String getMax() {
		return pr_nonac;
	}
	public void setMax(String max) {
		this.max = max;
	}
	
	public boolean InsertMethod(String email) {
		String url="jdbc:mysql://localhost:3306/hms";
		String uname="root";
		String pass="root";
		int id=0;
		
		String sql="insert into hotelbook values('"+id+"','"+ac+"','"+nonac+"','"+pr_ac+"','"+pr_nonac+"','"+max+"','"+email+"')";
		
		
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
