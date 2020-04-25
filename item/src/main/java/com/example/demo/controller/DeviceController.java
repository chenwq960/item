package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.form.SearchParam;
import com.example.demo.po.Device;
import com.example.demo.service.DeviceService;

@Controller
@RequestMapping("device")
public class DeviceController {
	@Autowired
	private DeviceService deviceService;
	
	@RequestMapping("/list/page")
	public String selectList(SearchParam searchParam,ModelMap modelMap) {
		List<Device> list = deviceService.selectList(searchParam);
		modelMap.put("list",list);
		modelMap.put("searchKey",searchParam.getSearchKey());
		return "device/list";
	}
	/**
	 * 删除的方法
	 * @return 
	 */
	@RequestMapping("/delete")
	public String delete(Integer deviceId) {
		deviceService.updateDeivceIsdelete(deviceId);
		return "redirect:list/page";
	}
	/**
	 * 增加跳转页面
	 * @return 
	 */
	@RequestMapping("/add/page")
	public String addPage() {
		return "device/create";
	}
	/**
	 * 增加的方法
	 * @return 
	 */
	@RequestMapping("/create")
	public String create(Device device,HttpSession session) {
		deviceService.create(device,session);
		return "redirect:list/page";
	}
	/**
	 * 查看详细的方法
	 * @return 
	 */
	@RequestMapping("/detail")
	public String detail(Integer deviceId,ModelMap modelMap) {
		Device device = deviceService.detail(deviceId);
		modelMap.put("divice",device);
		return "device/update";
	}
	/**
	 * 修改的方法
	 * @return 
	 */
	@RequestMapping("/update")
	public String update(Device device,HttpSession session) {
		deviceService.update(device,session);
		return "redirect:list/page";
		
	}

}
