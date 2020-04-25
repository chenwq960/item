package com.example.demo.util.sendMail;

/**
 * @Author zjt
 * @Date 2019年03月07 10:26
 */
public class TestEmail {

	public static void main(String[] args) {
	        EmailEntity email = new EmailEntity();
	        email.setUserName("chenwq960@163.com");
	        email.setPassword("FZZVHZWIIHGRYUSY");
	        email.setHost("smtp.163.com");
	        email.setPort(25);
	        email.setFromAddress("chenwq960@163.com");
	        email.setToAddress("960879872@qq.com");
	        email.setSubject("这是测试邮件!!!!");
	        email.setContext("看看这是什么");
	        email.setContextType("text/html;charset=utf-8");
	        boolean flag = EmailSend.EmailSendTest(email);
	        System.err.println("邮件发送结果=="+flag);
	
	}
}
