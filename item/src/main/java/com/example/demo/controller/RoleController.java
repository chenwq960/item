package com.example.demo.controller;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.form.SearchParam;
import com.example.demo.po.Role;
import com.example.demo.service.RoleService;

@Controller
@RequestMapping("role")
public class RoleController {
	@Autowired
	private RoleService roleService;
	
	@RequestMapping("/list/page")
	public String selectList(SearchParam searchParam,ModelMap modelMap) {
		List<Role> list = roleService.selectList(searchParam);
		modelMap.put("list",list);
		modelMap.put("searchKey",searchParam.getSearchKey());
		return "role/list";
	}
	/**
	 * 增加跳轉頁面
	 * @return 
	 */
	@RequestMapping("/add/page")
	public String addPage() {
		return "role/create";
	}
	/**
	 * 角色新增的方法
	 * @return 
	 */
	@RequestMapping("/create")
	public String create(String roleName,HttpSession session) {
		System.out.println("sdkjjdsfjkdsfjkdsf"+roleName+"-------------------");
		System.out.println(roleName);
		roleService.inser(roleName,session);
		return "redirect:list/page";
	}
	/**
	 * 假删除
	 * @param roleId
	 * @return 
	 */
	@RequestMapping("/delete")
	public String delete(Integer roleId) {
		roleService.updateRoleIsDelete(roleId);
		return "redirect:list/page";
	}
	/**
	 * 查看详细
	 * @return 
	 */
	@RequestMapping("/detail")
	public String detail(Integer roleId,ModelMap modelMap) {
		Role role = roleService.detail(roleId);
		modelMap.put("list",role);
		return "role/update";
	}
	/**
	 * 修改
	 * @return 
	 */
	@RequestMapping("/update")
	public String update(Role role,HttpSession session) {
		roleService.update(role,session);
		return "redirect:list/page";
	}
}
