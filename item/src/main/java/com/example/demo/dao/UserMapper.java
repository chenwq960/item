package com.example.demo.dao;

import java.util.List;

import com.example.demo.form.GetPassword;
import com.example.demo.form.Login;
import com.example.demo.form.SearchParam;
import com.example.demo.po.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	List<User> selectList(SearchParam searchParam);

	User login(Login login);

	User selectRealNameAndTelete(GetPassword password);

	User isNull(String name);

	User getPassword(String name);
}