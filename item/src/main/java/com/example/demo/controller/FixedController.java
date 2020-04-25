package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.po.Station;
import com.example.demo.service.StationService;

@Controller
@RequestMapping("fixed")
public class FixedController {
	@Autowired
	private StationService stationService;
	
	/**
	 * 跳转视图层
	 * @return 
	 */
	@RequestMapping("/list/show")
	public String show() {
		return "fixed/main";
	}
	/**
	 * 全国地图
	 * @return 
	 */
	
	@RequestMapping("/list/All")
	public String All(ModelMap modelMap) {
		List<Station> list = stationService.selectList(null);
		modelMap.put("list",list);
		return "fixed/list";
		
	}
}
