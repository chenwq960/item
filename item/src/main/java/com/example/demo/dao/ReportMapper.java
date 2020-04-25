package com.example.demo.dao;

import java.util.List;

import com.example.demo.po.UserSellDeviceNumber;

public interface ReportMapper {

	List<UserSellDeviceNumber> userSellStationNumber();

	List<UserSellDeviceNumber> getCountryAndRegionNumber();

	List<UserSellDeviceNumber> getUserSellNumber();

	List<UserSellDeviceNumber> getUserAndDepartmentNumber();

}
