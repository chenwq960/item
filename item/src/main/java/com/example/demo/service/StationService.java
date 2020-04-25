package com.example.demo.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.demo.form.SearchParam;
import com.example.demo.po.Station;

public interface StationService {

	List<Station> selectList(SearchParam searchParam);

	void updateStationIsdelete(Integer stationId);

	void create(Station station,HttpSession session);

	Station detail(Integer stationId);

	void update(Station station);

}
