package com.example.demo.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.demo.form.GetPassword;
import com.example.demo.form.Login;
import com.example.demo.form.SearchParam;
import com.example.demo.form.UserInfo;
import com.example.demo.po.User;
import com.example.demo.savephoto.FileDTD;
import com.example.demo.util.BaiduUtil.IdCardFront;

public interface UserService {

	List<User> selectList(SearchParam searchParam);

	User login(Login login);

	void create(UserInfo userinfo, FileDTD save, IdCardFront idCardFrontInfo,HttpSession session);

	User meddageDetail(Integer userId);

	User selectRealNameAndTelete(GetPassword password);


	int isNull(String name);

	User getYzm(Login login);



}
