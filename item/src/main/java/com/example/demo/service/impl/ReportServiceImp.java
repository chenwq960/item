package com.example.demo.service.impl;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.ReportMapper;
import com.example.demo.po.UserSellDeviceNumber;
import com.example.demo.service.ReportService;
@Service
public class ReportServiceImp implements ReportService{
	@Autowired
	private ReportMapper reportMapper;
	//人员销售设备的数量
	@Override
	public Map<String, Integer> userSellStationNumber() {
		List<UserSellDeviceNumber> list = reportMapper.userSellStationNumber();
		Map<String, Integer> collect = list.stream().collect(Collectors.toMap(UserSellDeviceNumber::getAccount, UserSellDeviceNumber::getNum));
		return collect;
	}
	/*
	 * 全国网点数量统计
	 */
	@Override
	public Map<String, Integer> getCountryRegion() {
		List<UserSellDeviceNumber> list = reportMapper.getCountryAndRegionNumber();
		Map<String, Integer> collect = list.stream().collect(Collectors.toMap(UserSellDeviceNumber::getAccount, (UserSellDeviceNumber::getNum)));
		return collect;
	}
	/**
	 * 查询人员销售总数量
	 */
	@Override
	public Map<String, Integer> getUserSellNumber() {
		List<UserSellDeviceNumber> list = reportMapper.getUserSellNumber();
		Map<String, Integer> collect = list.stream().collect(Collectors.toMap(UserSellDeviceNumber::getAccount, UserSellDeviceNumber::getNum));
		return collect;
	}
	/**
	 * 获取公司  部门占比
	 */
	@Override
	public Map<String, Integer> getUserAndDepartmentNumber() {
		List<UserSellDeviceNumber> list = reportMapper.getUserAndDepartmentNumber();
		Map<String, Integer> collect = list.stream().collect(Collectors.toMap(UserSellDeviceNumber::getAccount,UserSellDeviceNumber::getNum));
		return collect;
	}

}
