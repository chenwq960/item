package com.example.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.example.demo.interceptors.MyInterceptors;
import com.example.demo.service.LogService;

@Configuration
public class MyWebMvcAutoConfig implements WebMvcConfigurer{
	@Autowired
	private LogService logservice;
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new MyInterceptors(logservice))//
		.addPathPatterns("/**")//
		.excludePathPatterns("/user/login")//
		.excludePathPatterns("/go")//
		.excludePathPatterns("/static/**")//
		.excludePathPatterns("/user/telete")//
		.excludePathPatterns("/static/css/bootstrap.min.css")//
		.excludePathPatterns("/static/js/jquery-1.8.3.js")//
		.excludePathPatterns("/user/login")//
		.excludePathPatterns("");
		
	}

}
