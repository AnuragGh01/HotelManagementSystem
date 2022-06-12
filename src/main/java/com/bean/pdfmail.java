package com.bean;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class pdfmail {
public static void pdf(String mail) {
		
		System.out.println("sending mail...");
			
		String message="hello this is an auto-generated mail";
		String subject="testing";
		String to=mail;
		String from="bonvoyageofficial.in@gmail.com";
		
		
		sendEmail(message,subject,to,from);
	}
		//this method is responsible to send email
	private static void sendEmail(String message, String subject, String to, String from) {

		//variable for gmail host
		String host="smtp.gmail.com";
		
		//get the system properties
		Properties properties = System.getProperties();
		System.out.println("prop"+properties);
		
		//setting important information to properties object
		
		
		 properties.put("mail.smtp.auth", true);
		    properties.put("mail.smtp.starttls.enable", "true");
		    properties.put("mail.smtp.host", host);
		    properties.put("mail.smtp.port", 587);
		    properties.put("mail.smtp.ssl.trust", host);
		    properties.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
		   
		
		
		//Step1: get the session object
		Session session=Session.getInstance(properties,new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication("bonvoyageofficial.in@gmail.com", "anuraghms@6784");
			} 
			
			});
		session.setDebug(true);
		
		//step2: compose message[text,multimedia]
		MimeMessage m=new MimeMessage(session);
//		
//		pdfgenerate ob=new pdfgenerate();
//		ob.king();
		
		//from emailid
		try {
		m.setFrom(from);
		 
		//adding recipient to message
		m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		
		//adding subject to message
		m.setSubject(subject);
		
		//adding text to message
//		m.setText(message);
		Multipart mp=new MimeMultipart();
		
		MimeBodyPart text=new MimeBodyPart();
		text.setText(message);
		
		MimeBodyPart pdf=new MimeBodyPart();
		pdf.attachFile("C:\\Users\\Anurag Ghosh\\eclipse-web-workspace\\pdf_mail\\pdf-generate\\invoice.pdf");
		
		mp.addBodyPart(pdf);
		mp.addBodyPart(text);
		
		m.setContent(mp);	
		//send
		//step3: send the message using transport class
		Transport.send(m);
		
		System.out.println("success...");
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		



		
		
	}


}
