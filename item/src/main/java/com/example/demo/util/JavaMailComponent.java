package com.example.demo.util;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import freemarker.core.ParseException;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;

/*
 * 生成邮件发送模板对象
 */
//注意那么该工具类在项目运行时为了保证能够被扫描到就必须通过对应的注解进行声明
@Component
public class JavaMailComponent {
	//声明邮件模板对象所使用的具体文件
	private static final String template = "bwie.jsp";
	@Autowired
	private FreeMarkerConfigurer freeMarkerConfigurer;
	@Autowired 
	private JavaMailSenderUtil javaMailSender;

	
	/*
	 * 发送邮件的核心方法
	 * email   接收方的邮箱账号
	 * mailContent  发送的内容
	 */
	public void sendMail(String email,String mailContent) {
		//模板中的数据
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("email", email);
		//map.put("name", "lisi");
//		map.put("hehe", hehe);
		try {
			String text = getTextByTemplate(template, map);
			//调用邮件发送
			this.send(email, text,mailContent);
		} catch (IOException | TemplateException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	private String getTextByTemplate(String template, Map<String, Object> model) throws TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
		return FreeMarkerTemplateUtils.processTemplateIntoString(freeMarkerConfigurer.getConfiguration().getTemplate(template), model);
	}

	private String send(String email, String text,String mailContent) throws MessagingException, UnsupportedEncodingException {
		MimeMessage message = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
		InternetAddress from = new InternetAddress();
		from.setAddress(javaMailSender.getUsername());
		
		//发件人称呼
		from.setPersonal("北京八维研修学院云计算", "UTF-8");
		helper.setFrom(from);
		//设置发送的目标的对象
		helper.setTo(email);
		helper.setSubject(mailContent);
		helper.setText(text, true);
		//发送的内容
		javaMailSender.send(message);
		return text;
	}

}
