package com.example.demo.util;

import com.example.demo.po.User;
import com.example.demo.util.sendMail.EmailEntity;
import com.example.demo.util.sendMail.EmailSend;

public class SendMailUtil {
	public static boolean send(User password) {
		boolean flag = false;
		if (password != null) {
			// 发送密码到邮箱
			EmailEntity email = new EmailEntity();
			email.setUserName("chenwq960@163.com");
			email.setPassword("FZZVHZWIIHGRYUSY");
			email.setHost("smtp.163.com");
			email.setPort(25);
			email.setFromAddress("chenwq960@163.com");
			// 发送密码到 这个邮箱中
			email.setToAddress(password.getEmail());
			email.setSubject("找回密码----密码在其中");
			// 验证码发送到内容中
			email.setContext("您的密码是\t" + password.getPassword());
			email.setContextType("text/html;charset=utf-8");
			flag = EmailSend.EmailSendTest(email);
			System.err.println("邮件发送结果==" + flag);
		}
		return flag;
	}
}
