package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.form.SearchParam;
import com.example.demo.po.Region;
import com.example.demo.po.Station;
import com.example.demo.service.RegionService;
import com.example.demo.service.StationService;

@Controller
@RequestMapping("station")
public class StationController {
	@Autowired
	private StationService stationService;
	@Autowired
	private RegionService regionMapper;

	@RequestMapping("/list/page")
	public String selectList(SearchParam searchParam, ModelMap modelMap) {
		List<Station> list = stationService.selectList(searchParam);
		modelMap.put("searchKey", searchParam.getSearchKey());
		modelMap.put("list", list);
		return "station/list";
	}

	/**
	 * 删除的方法
	 * 
	 * @return
	 */
	@RequestMapping("/delete")
	public String delete(Integer stationId) {
		stationService.updateStationIsdelete(stationId);
		return "redirect:list/page";
	}

	/**
	 * 增加的跳转页面
	 * @return 
	 */
	@RequestMapping("/add/page")
	public String addPage() {
		return "station/create";
	}

	// **三级联动
	@ResponseBody
	@RequestMapping("/getRegionList")
	public List<Region> getRegionList(Integer regionId) {
		List<Region> list = regionMapper.selectList(regionId);
		return list;
	}
	
	
	/**
	 * 增加的方法
	 * @return 
	 */
	@RequestMapping("/create")
	public String create(Station station,HttpSession session) {
		stationService.create(station,session);
		return "redirect:list/page";
	}

	/**
	 * 查看详细的跳转页面
	 * @return 
	 */
	@RequestMapping("/detail")
	public String detail(Integer stationId,ModelMap modelMap) {
		Station station = stationService.detail(stationId);
		modelMap.put("station",station);
		return "station/update";
	}
	/**
	 * 修改页面
	 * @return 
	 */
	@RequestMapping("/update")
	public String update(Station station) {
		stationService.update(station);
		return "redirect:list/page";
	}
}
