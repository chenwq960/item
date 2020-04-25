package com.example.demo.interceptors;

import java.util.Date;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.po.Log;
import com.example.demo.po.User;
import com.example.demo.service.LogService;

public class MyInterceptors implements HandlerInterceptor{
	private LogService logservice;
	//生成构造
	public MyInterceptors(LogService logservice) {
		this.logservice = logservice;
	}
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String userName= null;
		User user = (User) request.getSession().getAttribute("currentUser");
		if(user!=null) {
			userName = (user.getUserId()+"");		//当前对象
		}else {
			request.setAttribute("error", "登录时间过期，请重新登录");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		
		Log log = new Log();
		//访问路径
		log.setLogUrl(request.getRequestURI());			//访问路径
		log.setLogCurrentuser(userName);
		log.setLogStartTime(new Date());                //开始时间
	//	log.setLogParam(JSONUtils.toJSONString(request.getParameterMap()));	//参数
	//	log.setLogParam(JSONUtils.toJSONString(request.getParameterMap()));
		Integer currentLogId = logservice.create(log);
		request.setAttribute("currentLogId", currentLogId);
		
		return Objects.nonNull(user);
		
		
		
	}
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
//		Log log = logservice.detail((Integer) request.getAttribute("currentLogId"));
//		
//		log.setLogStayTime(new Date());	//结束时间
//		log.setLogEndTime(log.getLogStartTime().getTime()-log.getLogStayTime().getTime());	//消耗时间
//		logservice.update(log);		//执行修改
//		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}

}
