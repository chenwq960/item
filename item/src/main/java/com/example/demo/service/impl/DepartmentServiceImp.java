package com.example.demo.service.impl;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CachePut;
import org.springframework.stereotype.Service;

import com.example.demo.dao.DepartmentMapper;
import com.example.demo.form.SearchParam;
import com.example.demo.po.Department;
import com.example.demo.po.User;
import com.example.demo.service.DepartmentService;

@Service
@CacheConfig(cacheNames = "myCaches")
public class DepartmentServiceImp implements DepartmentService {
	@Autowired
	private DepartmentMapper departmentMapper;
	
	/**
	 * 列表查询
	 */
	@Override
	@CachePut(value = "departmentList")
	public List<Department> selectList(SearchParam searchParam) {
		return departmentMapper.selectList(searchParam);
	}
	/**
	 * 新增的方法
	 */

	@Override
	@CachePut(value =  "departmentList")
	public void create(Department department, HttpSession session) {
		User user = (User) session.getAttribute("currentUser");
		department.setCreateTime(new Date());
		department.setCreateUser(user.getUserId());
		department.setUpdateTime(new Date());
		department.setUpdateUser(user.getUserId());
		departmentMapper.insertSelective(department);
	}
	/**
	 * 假删除
	 */
	@Override
	public void updateDepartmentIsDelete(Integer depId) {
		departmentMapper.updateDepartmentIsDelete(depId);
		
	}
	/**
	 * 查看详细
	 */
	@Override
	public Department detail(Integer depId) {
		return departmentMapper.selectByPrimaryKey(depId);
	}
	/**
	 * 修改方法
	 */
	@Override
	@CachePut(value =  "departmentList")
	public void update(Department dep, HttpSession session) {
		User user = (User) session.getAttribute("currentUser");
		dep.setUpdateTime(new Date());
		dep.setUpdateUser(user.getUserId());
		departmentMapper.updateByPrimaryKeySelective(dep);
		
	}

}
