package com.example.demo.service;

import java.util.Map;

public interface ReportService {

	java.util.Map<String, Integer> userSellStationNumber();

	Map<String, Integer> getCountryRegion();

	Map<String, Integer> getUserSellNumber();

	Map<String, Integer> getUserAndDepartmentNumber();

}
