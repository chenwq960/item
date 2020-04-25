package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.form.SearchParam;
import com.example.demo.po.Device;
import com.example.demo.po.SaleDevice;
import com.example.demo.po.Station;
import com.example.demo.po.User;
import com.example.demo.service.DeviceService;
import com.example.demo.service.SaleDeviceService;
import com.example.demo.service.StationService;
import com.example.demo.service.UserService;

@Controller
@RequestMapping("saleDevice")
public class SaleDeviceController {
	@Autowired
	private SaleDeviceService saleDeviceService;
	// 注入设备
	@Autowired
	private DeviceService deviceService;
	// 注入人员表
	@Autowired
	private UserService userservice;
	// 注入网点
	@Autowired
	private StationService stationService;

	@RequestMapping("/list/page")
	public String selectList(SearchParam searchParam, ModelMap modelMap) {
		List<SaleDevice> list = saleDeviceService.selectList(searchParam);
		modelMap.put("searchKey", searchParam.getSearchKey());
		modelMap.put("startTime", searchParam.getStartTime());
		modelMap.put("list", list);
		return "saleDevice/list";
	}

	/**
	 * 删除的方法
	 * 
	 * @return
	 */
	@RequestMapping("/delete")
	public String delete(Integer saleDeviceId) {
		saleDeviceService.updateSaleDeivceIsDelete(saleDeviceId);
		return "redirect:list/page";
	}

	/**
	 * 新增跳转页面
	 * 
	 * @return
	 */
	@RequestMapping("/add/page")
	public String addPage(ModelMap modelMap) {
		// 查找所有的设备
		List<Device> divce = deviceService.selectList(null);
		modelMap.put("device", divce);
		// 查找所有的人员
		List<User> user = userservice.selectList(null);
		modelMap.put("user", user);
		// 查找所有的网点
		List<Station> selectList = stationService.selectList(null);
		modelMap.put("station", selectList);
		return "saleDevice/create";
	}

	/**
	 * 添加的方法
	 * 
	 * @return
	 */
	@RequestMapping("/create")
	public String create(SaleDevice saleDevice, HttpSession session) {
		saleDeviceService.create(saleDevice, session);
		return "redirect:list/page";
	}

	/**
	 * 修改的跳转页面
	 * @return 
	 */
	@RequestMapping("/detail")
	public String update(Integer saleDeviceId, ModelMap modelMap) {
		// 查找所有的设备
		List<Device> divce = deviceService.selectList(null);
		modelMap.put("device", divce);
		// 查找所有的人员
		List<User> user = userservice.selectList(null);
		modelMap.put("user", user);
		// 查找所有的网点
		List<Station> selectList = stationService.selectList(null);
		modelMap.put("station", selectList);
		//查找设备销售的
		SaleDevice saleDevice = saleDeviceService.detail(saleDeviceId);
		modelMap.put("saleDevice", saleDevice);
		return "saleDevice/update";
	}
	/**
	 * 修改的方法
	 * @return 
	 */
	@RequestMapping("/update")
	public String update(SaleDevice saleDevice, HttpSession session) {
		saleDeviceService.update(saleDevice,session);
		return "redirect:list/page";
		
		
	}

}
