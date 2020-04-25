package com.example.demo.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.demo.form.SearchParam;
import com.example.demo.po.Role;

public interface RoleService {

	List<Role> selectList(SearchParam searchParam);

	void delete(Integer roleId);


	void inser(String roleName, HttpSession session);

	void updateRoleIsDelete(Integer roleId);

	Role detail(Integer roleId);

	void update(Role role,HttpSession session);

}
