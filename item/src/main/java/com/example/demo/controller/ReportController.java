package com.example.demo.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.ReportService;

//图表
@Controller
@RequestMapping("report")
public class ReportController {
	@Autowired
	private ReportService reportService;
	
	@RequestMapping("/list/page")
	public String userSellStationNumber() {
		return "report/list";
		
	}
	/**
	 * 员工销售次数
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/get/usersell/stationNumber")
	public Map<String, Integer> model() {
		Map<String,Integer> map = reportService.userSellStationNumber();
		return map;
	}
	/**
	 * 网点所在地区数量
	 * @return 
	 */
	@ResponseBody
	@RequestMapping("/get/Country/Region")
	public Map<String, Integer> CountryRegion() {
		Map<String,Integer> map = reportService.getCountryRegion();
		return map;
	}
	/**
	 * 去往网点表
	 * @return 
	 */
	@RequestMapping("/goFindCountry")
	public String goCountry() {
		return "report/CountryRegion";
	}
	/*
	 * 去往 人员销售总数量
	 */
	@RequestMapping("/goUserSellNumber")
	public String getUserSellNumber() {
		return "report/userSellNumber";
	}
	/**
	 * 查看人員銷售總數量
	 * @return 
	 */
	@ResponseBody
	@RequestMapping("/getUserSellNumber")
	public Map<String, Integer> goUserSellNumber() {
		Map<String,Integer> map = reportService.getUserSellNumber();
		return map;
	}
	/**
	 * 去往 公司部门占比
	 * @return 
	 */
	@RequestMapping("/goUserAndDepartmentNumber")
	public String goUserAndDepartmentNumber() {
		return "report/userAndDepartmentNumber";
	}
	/**
	 * 查询公司的部门占比
	 * @return 
	 */
	@ResponseBody
	@RequestMapping("/getUserAndDepartmentNumber")
	public Map<String, Integer> UserAndDepartmentNumber() {
		Map<String,Integer> map = reportService.getUserAndDepartmentNumber();
		return map;
	}
	

}
