package com.example.demo.dao;

import java.util.List;

import com.example.demo.form.SearchParam;
import com.example.demo.po.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer roleId);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

	List<Role> selectList(SearchParam searchParam);

	void updateRoleIsDelete(Integer roleId);
}