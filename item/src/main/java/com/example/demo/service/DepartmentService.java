package com.example.demo.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.demo.form.SearchParam;
import com.example.demo.po.Department;

public interface DepartmentService {

	List<Department> selectList(SearchParam searchParam);

	void create(Department department, HttpSession session);

	void updateDepartmentIsDelete(Integer depId);

	Department detail(Integer depId);

	void update(Department dep, HttpSession session);

}
