package com.example.demo.dao;

import java.util.List;

import com.example.demo.form.SearchParam;
import com.example.demo.po.Department;

public interface DepartmentMapper {
    int deleteByPrimaryKey(Integer departmentId);

    int insert(Department record);

    int insertSelective(Department record);

    Department selectByPrimaryKey(Integer departmentId);

    int updateByPrimaryKeySelective(Department record);

    int updateByPrimaryKey(Department record);

	List<Department> selectList(SearchParam searchParam);

	void updateDepartmentIsDelete(Integer depId);
}