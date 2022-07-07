package com.bean;

import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.itextpdf.text.Document;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfDocument;
import com.itextpdf.text.pdf.PdfWriter;




public class pdfgenerate {
  

	public static void king(String s1,String s2,String s3,String s4,String s5,String s6,String s7,int s8,int s9) {
		System.out.println("welcome king");
		String file_name="path";//name of pdf
		System.out.println(s1);

		
		
		
		try {
		
		Document doc=new Document();
		
		PdfWriter.getInstance(doc, new FileOutputStream(file_name));
//		PdfDocument pdfdocument=new PdfDocument(pdfWriter);
	    doc.setPageSize(PageSize.A4);
		
		doc.open();
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String dbName = "hms";
		String userId = "root";
		String password = "root";
		Connection connection=null;

Statement statement = null;
ResultSet resultSet = null;
		
		connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
		
		statement=connection.createStatement();
		String sql ="SELECT *FROM usrbook where hotnam='" +s1+"'and usrmail='" +s2+"'and location='" +s3+"'and indate='" +s4+"'and outdate='" +s5+"'and nop='" +s6+"'and roomtyp='" +s7+"' limit 1 ";
		
		resultSet = statement.executeQuery(sql);
		
		while(resultSet.next()){
			//doc.add(Image.getInstance("C:\\Users\\Anurag Ghosh\\eclipse-web-workspace\\pdf_mail\\noob-min.jpeg"));

			Paragraph para=new Paragraph("BonVoyage");
			doc.add(para);
		Paragraph para1=new Paragraph("Hotel:-"+resultSet.getString("hotnam")+"\nAddress:-"+resultSet.getString("location")+"\nCheck-in Date:-"+resultSet.getString("indate")+"\nCheck-out Date:-"+resultSet.getString("outdate")+"\nNumber of people:-"+resultSet.getString("nop")+"\nRoom-type:-"+resultSet.getString("roomtyp")+"\nTotal Price:-"+s9+"\nNo. of rooms allocated:-"+s8);            //paragraph
		doc.add(para1);
		}
		
		
		
		
		
		System.out.println("done");
		
		
		doc.close();
		}catch(Exception e) {
			
		}
		//return file_name;
	}

}
