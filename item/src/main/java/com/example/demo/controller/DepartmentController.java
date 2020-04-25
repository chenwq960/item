package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import com.example.demo.form.SearchParam;
import com.example.demo.po.Department;
import com.example.demo.service.DepartmentService;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("department")
public class DepartmentController {
	@Autowired
	private DepartmentService departmentService;
	
	/**
	 * 列表
	 * @return 
	 */
	@RequestMapping("/list/page")
	public String selectList(SearchParam searchParam,ModelMap modelMap) {
		List<Department> list = departmentService.selectList(searchParam);
		modelMap.put("searchKey",searchParam.getSearchKey());
		modelMap.put("list",list);
		return "department/list";
	}
	/**
	 * 添加的方法
	 * @return 
	 */
	@RequestMapping("/create")
	public String create(Department department,HttpSession session) {
		departmentService.create(department,session);
		return "redirect:list/page";
	}
	/**
	 * 添加跳转页面
	 * @return 
	 */
	@RequestMapping("/add/page")
	public String addPage() {
		return "department/create";
	}
	/**
	 * 删除的方法
	 * @return 
	 */
	@RequestMapping("/delete")
	public String delete(Integer depId) {
		departmentService.updateDepartmentIsDelete(depId);
		return "redirect:list/page";
	}
	/**
	 * 查看detail
	 * @return 
	 */
	@RequestMapping("/detail")
	public String detail(Integer depId,ModelMap modelMap) {
		Department list = departmentService.detail(depId);
		modelMap.put("list",list);
		return "department/update";
	}
	/**
	 * 修改的方法
	 * @return 
	 */
	@RequestMapping("/update")
	public String update(Department dep,HttpSession session) {
		departmentService.update(dep,session);
		return "redirect:list/page";
	}
}
