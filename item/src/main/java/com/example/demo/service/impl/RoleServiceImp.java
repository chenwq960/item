package com.example.demo.service.impl;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.example.demo.dao.RoleMapper;
import com.example.demo.form.SearchParam;
import com.example.demo.po.Role;
import com.example.demo.po.User;
import com.example.demo.service.RoleService;

@Service
@CacheConfig(cacheNames = "myCaches")
public class RoleServiceImp implements RoleService{
	@Autowired
	private RoleMapper roleMapper;
	/**
	 * 角色列表查询
	 */
	@Override
	@Cacheable(value = "roleList")
	public List<Role> selectList(SearchParam searchParam) {
		return roleMapper.selectList(searchParam);
	}
	/**
	 * 删除角色
	 */
	@Override
	public void delete(Integer roleId) {
		roleMapper.deleteByPrimaryKey(roleId);
	}
	/**
	 * 新增的方法
	 */
	@Override
	@CachePut(value = "roleList")
	public void inser(String roleName, HttpSession session) {
		User userinfo = (User) session.getAttribute("currentUser");
		Role role = new Role();
		role.setRoleName(roleName);
		role.setCreateTime(new Date());
		role.setCreateUser(userinfo.getUserId());
		role.setUpdateTime(new Date());
		role.setUpdateUser(userinfo.getUserId());
		roleMapper.insertSelective(role);
	}
	/**
	 * 模拟删除
	 */
	@Override
	public void updateRoleIsDelete(Integer roleId) {
		roleMapper.updateRoleIsDelete(roleId);
		
	}
	/**
	 * 查看详细的方法
	 */
	@Override
	public Role detail(Integer roleId) {
		return roleMapper.selectByPrimaryKey(roleId);
	}
	/**
	 * 修改的方法
	 */
	@Override
	@CachePut(value = "roleList")
	public void update(Role role,HttpSession session) {
		User user = (User) session.getAttribute("currentUser");
		role.setUpdateTime(new Date());
		role.setUpdateUser(user.getUserId());
		roleMapper.updateByPrimaryKeySelective(role);
	}
	
}
