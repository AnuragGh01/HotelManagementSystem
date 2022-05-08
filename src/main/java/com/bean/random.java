package com.bean;

public class random {
	static String random;

	public static String verify() {
		int otp=(int)(Math.random()*9000);
	 random=String.valueOf(otp);
		return random;

	}
	public static String send() {
		String ran=random;
		return ran;
	}

}
