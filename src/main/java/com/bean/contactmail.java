package com.bean;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class contactmail {
public  void king(String name,String email) {
		
		System.out.println("sending mail...");
			
		String message="Hello "+name+".\n\nThanks for contacting us.\n\nYou can email us your query at bonvoyageofficial@gmail.com:\n\nWe are alwaya ready to listen you. :)\n\n\n\n  Regards,\nBonVoyage.";
		String subject="Contact";
		String to=email;
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
		
		//from emailid
		try {
		m.setFrom(from);
		 
		//adding recipient to message
		m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		
		//adding subject to message
		m.setSubject(subject);
		
		//adding text to message
		m.setText(message);
		
		//send
		//step3: send the message using transport class
		Transport.send(m);
		
		System.out.println("success...");
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		



		
		
	}


}
