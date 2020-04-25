package com.example.demo.service.impl;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.example.demo.dao.StationMapper;
import com.example.demo.form.SearchParam;
import com.example.demo.po.Station;
import com.example.demo.po.User;
import com.example.demo.service.StationService;
@Service
@CacheConfig(cacheNames = "myCaches")
public class StationServiceImp implements StationService {
	@Autowired
	private StationMapper stationMapper;

	@Override
	@Cacheable(value = "stationList")
	public List<Station> selectList(SearchParam searchParam) {
		return stationMapper.selectList(searchParam);
	}
	/**
	 * 模拟删除
	 */
	@Override
	public void updateStationIsdelete(Integer stationId) {
		stationMapper.updateStationIsdelete(stationId);
		
	}
	/**
	 * 增加的方法
	 */
	@Override
	@CachePut(value = "stationList")
	public void create(Station station,HttpSession session) {
		User user = (User) session.getAttribute("currentUser");
		station.setCreateTime(new Date());
		station.setCreateUser(user.getUserId());
		station.setUpdateTime(new Date());
		station.setUpdateUser(user.getUserId());
		stationMapper.insertSelective(station);
	}
	/**
	 * 回显
	 */
	@Override
	public Station detail(Integer stationId) {
		return stationMapper.selectByPrimaryKey(stationId);
	}
	/**
	 * 修改的方法
	 */
	@Override
	@CachePut(value = "stationList")
	public void update(Station station) {
		stationMapper.updateByPrimaryKeySelective(station);
	}
}
