package com.example.demo.util;

/*
 * 邮件发送的工具类，重点是为了从配置文件中获取发送人邮件信息，注意配置文件中可以配置多个发送人，然后在发送时进行必要的选择,
 * 注意这个工具类由于是用来解析核心配置文件中的发送账号的信息用的，务必要保证配置文件的正确性。
 */
import java.util.ArrayList;
import java.util.Map;
import java.util.Properties;

import javax.mail.internet.MimeMessage;

import org.springframework.boot.autoconfigure.mail.MailProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
@EnableConfigurationProperties(MailProperties.class)
public class JavaMailSenderUtil extends JavaMailSenderImpl implements JavaMailSender {

	private ArrayList<String> usernameList;
	private ArrayList<String> passwordList;
	private int currentMailId = 0;
	private final MailProperties properties;

	public JavaMailSenderUtil(MailProperties properties) {
		this.properties = properties;

		// 初始化账号
		if (usernameList == null)
			usernameList = new ArrayList<String>();
		String[] userNames = this.properties.getUsername().split(",");
		if (userNames != null) {
			for (String user : userNames) {
				usernameList.add(user);
			}
		}

		// 初始化密码
		if (passwordList == null)
			passwordList = new ArrayList<String>();
		String[] passwords = this.properties.getPassword().split(",");
		if (passwords != null) {
			for (String pw : passwords) {
				passwordList.add(pw);
			}
		}
	}

	@Override
	protected void doSend(MimeMessage[] mimeMessage, Object[] object) throws MailException {

		super.setUsername(usernameList.get(currentMailId));
		super.setPassword(passwordList.get(currentMailId));

		// 设置编码和各种参数
		super.setHost(this.properties.getHost());
		super.setDefaultEncoding(this.properties.getDefaultEncoding().name());
		super.setJavaMailProperties(asProperties(this.properties.getProperties()));
		super.doSend(mimeMessage, object);
		// 轮询,对应的下标加1
		currentMailId = (currentMailId + 1) % usernameList.size();
	}

	private Properties asProperties(Map<String, String> source) {
		Properties properties = new Properties();
		properties.putAll(source);
		return properties;
	}

	@Override
	public String getUsername() {
		return usernameList.get(currentMailId);
	}
}
