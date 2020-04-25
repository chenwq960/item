package com.example.demo.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.demo.form.SearchParam;
import com.example.demo.po.Device;

public interface DeviceService {

	List<Device> selectList(SearchParam searchParam);

	void updateDeivceIsdelete(Integer deviceId);

	void create(Device device,HttpSession session);

	Device detail(Integer deviceId);

	void update(Device device,HttpSession session);

}
